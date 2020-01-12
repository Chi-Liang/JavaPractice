 * Copyright (C) 2009-2014 SAP SE or an SAP affiliate company. All rights reserved
 */
sap.ui.define([
  "fs/agsipw/reuse/lib/dataentry/view/StaticController",
  "fs/agsipw/prospect/policycheck/util/FlowNavigationHelper",
  "sap/ui/model/json/JSONModel",
  "fs/agsipw/prospect/policycheck/util/backendHelper",
  "fs/agsipw/reuse/lib/util/formatter",
  "sap/ui/Device"
], function(Controller, FlowNavigationHelper, JSONModel, backendHelper, formatter, Device) {
  "use strict";

  return Controller.extend("fs.agsipw.prospect.policycheck.view.PolicyCheck3MAOverview", {
    /**
     * onInit()
     *
     * @memberOf fs.agsipw.prospect.policycheck.view.PolicyCheck3MAOverview
     */
    onInit: function() {
      // fix issues from SVGElement bug (fixed in SAPUI5 1.32.11) (issue ref. Uncaught TypeError: this.getTransformToElement is not a function(…))
      SVGElement.prototype.getTransformToElement = SVGElement.prototype.getTransformToElement || function(elem) {
        return elem.getScreenCTM().inverse().multiply(this.getScreenCTM());
      };

      this.oView = this.getView();

      if (sap.ui.Device.support.touch === false) {
        this.oView.addStyleClass("sapUiSizeCompact");
      }

      this.oRouter = this.getRouter();
      this.oRouter.attachRouteMatched(this._handleRouterMatched, this);

      this.oView.setModel(new sap.ui.model.json.JSONModel(), "select");
      this.oView.setModel(new sap.ui.model.json.JSONModel(), "selectData");
      this.oView.setModel(new sap.ui.model.json.JSONModel(), "projectionData");

      this._oBundle = this.getOwnerComponent().getModel("i18n").getResourceBundle();

      this._setOverviewNavigation();
      this.addVizFrameStackedColumnInsured();
      this.addVizFrameStackedColumnPolicyHolder();

      this.isFinancialImpact = false;
      this.isFinancialImpactInsured = false;
      this.isPolicyCheck3MAOverviewPage = false;
      var that = this;
      $(window).load(function() {
    	  that.reload3MACss(true);
      });
    },

    /**
     * Set Overview Navigation Event
     *
     * @function _setOverviewNavigation
     * @memberOf PolicyCheck3MAOverview
     * @return {void}
     */
    _setOverviewNavigation: function() {
      var fnNavigate = function(oEvent) {
        var sId = oEvent.currentTarget.id,
          sCODE = "A";
        if (sId.indexOf("idMedicalTitleIcon") > -1 || sId.indexOf("idMedicalTitleList") > -1 ) {
          sCODE = "C";
        } else if (sId.indexOf("idFinanceTitleIcon") > -1 || sId.indexOf("idFinanceTitleList") > -1 ) {
          sCODE = "B";
        }
        this.onNext({
          requestParameters: {
            selectedAccount: sCODE
          }
        });
      };

      this.byId("idLifeTitleIcon").attachBrowserEvent("click", fnNavigate, this);
      this.byId("idLifeTitleList").attachBrowserEvent("click", fnNavigate, this);
      this.byId("idMedicalTitleIcon").attachBrowserEvent("click", fnNavigate, this);
      this.byId("idMedicalTitleList").attachBrowserEvent("click", fnNavigate, this);
      this.byId("idFinanceTitleIcon").attachBrowserEvent("click", fnNavigate, this);
      this.byId("idFinanceTitleList").attachBrowserEvent("click", fnNavigate, this);
    },

    addVizFrameStackedColumnInsured: function() {
      var oVizFrameStackedColumnInsured = this.byId("idVizFrameStackedColumnInsured");
	  var oModelStackedColumnInsured = new JSONModel();
	  var that = this;

		
      // Set model
      oVizFrameStackedColumnInsured.setModel(oModelStackedColumnInsured);
      // Set viz properties
      oVizFrameStackedColumnInsured.setVizProperties({
        interaction: {
          behaviorType: null
        },
        title: {
          visible: false
        },
        plotArea: {
          background: {
            color: "#f8fcfc"
          }
        },
        general: {
          background: {
            color: "#f8fcfc"
          }
        },
        categoryAxis: {
          title: {
            text: this._oBundle.getText("AGE")
          }
        },
        valueAxis: {
          title: {
            text: this._oBundle.getText("AMOUNT_X", [this._oBundle.getText("NTD")])
          }
        },
        legend: {
          title: {
            visible: false
          },
          postRenderer: function(oChart, oTarget) {
            that._customLegend.call(that, oTarget);
          }
        },
        tooltip: {
          visible: true,
          postRender: function(oTooltipDomNode) {
            that._customTooltip.call(that, oTooltipDomNode, "DIFF_PREMIUM_BY_INSURED");
          }
        }
      });
      oVizFrameStackedColumnInsured.setVizType("stacked_column");
      //// Configure dataset
      oVizFrameStackedColumnInsured.setDataset(new sap.viz.ui5.data.FlattenedDataset({
        dimensions: [{
          name: this._oBundle.getText("AGE"),
          value: "{AGE}"
        }, {
          name: this._oBundle.getText("INSURED"),
          value: "{NAME}"
        }],
        measures: [{
          name: this._oBundle.getText("PREMIUM"),
          value: "{PREMIUM}"
        }],
        data: {
          path: "/"
        }
      }));
      // Map dataset in chart (set Y Axis and X Axis)
      oVizFrameStackedColumnInsured.addFeed(new sap.viz.ui5.controls.common.feeds.FeedItem({
        uid: "valueAxis",
        type: "Measure",
        values: [this._oBundle.getText("PREMIUM")]


      })).addFeed(new sap.viz.ui5.controls.common.feeds.FeedItem({
        uid: "categoryAxis",
        type: "Dimension",
        values: [this._oBundle.getText("AGE")]
      })).addFeed(new sap.viz.ui5.controls.common.feeds.FeedItem({
        uid: "color",
        type: "Dimension",
        values: [this._oBundle.getText("INSURED")]
      }));
    },

    addVizFrameStackedColumnPolicyHolder: function() {
      var oVizFrameStackedColumnPolicyHolder = this.byId("idVizFrameStackedColumnPolicyHolder"),
        oModelStackedColumnPolicyHolder = new JSONModel(),
        that = this;
      // Set model
      oVizFrameStackedColumnPolicyHolder.setModel(oModelStackedColumnPolicyHolder);
      // Set viz properties
      oVizFrameStackedColumnPolicyHolder.setVizProperties({
        interaction: {
          behaviorType: null
        },
        title: {
          visible: false
        },
        plotArea: {
          background: {
            color: "#f8fcfc"
          }
        },
        general: {
          background: {
            color: "#f8fcfc"
          }
        },
        categoryAxis: {
          title: {
            text: this._oBundle.getText("AGE")
          }
        },
        valueAxis: {
          title: {
            text: this._oBundle.getText("AMOUNT_X", [this._oBundle.getText("NTD")])
          }
        },
        legend: {
          title: {
            visible: false
          },
          postRenderer: function(oChart, oTarget) {
            that._customLegend.call(that, oTarget);
          }
        },
        tooltip: {
          visible: true,
          postRender: function(oTooltipDomNode) {
            that._customTooltip.call(that, oTooltipDomNode, "DIFF_PREMIUM_BY_POLICYHOLDER");
          }
        }
      });
      oVizFrameStackedColumnPolicyHolder.setVizType("stacked_column");
      //// Configure dataset
      oVizFrameStackedColumnPolicyHolder.setDataset(new sap.viz.ui5.data.FlattenedDataset({
        dimensions: [{
          name: this._oBundle.getText("AGE"),
          value: "{AGE}"
        }, {
          name: this._oBundle.getText("POLICYHOLDER"),
          value: "{NAME}"
        }],
        measures: [{
          name: this._oBundle.getText("PREMIUM"),
          value: "{PREMIUM}"
        }],
        data: {
          path: "/"
        }
      }));
      //// Map dataset in chart (set Y Axis and X Axis)
      oVizFrameStackedColumnPolicyHolder.addFeed(new sap.viz.ui5.controls.common.feeds.FeedItem({
        uid: "valueAxis",
        type: "Measure",
        values: [this._oBundle.getText("PREMIUM")]
      })).addFeed(new sap.viz.ui5.controls.common.feeds.FeedItem({
        uid: "categoryAxis",
        type: "Dimension",
        values: [this._oBundle.getText("AGE")]
      })).addFeed(new sap.viz.ui5.controls.common.feeds.FeedItem({
        uid: "color",
        type: "Dimension",
        values: [this._oBundle.getText("POLICYHOLDER")]
      }));
    },

    _customLegend: function(oTarget) {
      // get DOM elements list from the chart and copy in an array. It is not an array, but a HTMLCollection(array-like). With [].slice.call it converts HTMLCollection into JS array.
      var aLegendItems = [].slice.call(oTarget.target[0][0].querySelectorAll(".v-legend-item")),
        that = this;
      aLegendItems.map(function(oItem) {
        // set Legend clicked on cursor enter legend area
        oItem.addEventListener("mouseenter", function() {
          that._bLegendClicked = true;
        });
        // set Legend clicked on touch detected
        oItem.addEventListener("touchstart", function() {
          that._bLegendClicked = true;
        });
        // set Legend clicked false when mouse leave legend area
        oItem.addEventListener("mouseleave", function() {
          that._bLegendClicked = false;
        });
      });

    },

    _customTooltip: function(oTooltipDomNode, sCustomText) {
      // Event triggered when legend item is clicked
      if (this._bLegendClicked) {
        var oLabel = oTooltipDomNode[0][0].querySelectorAll(".tooltipfooterlabel")[0];
        // Change Legend clicked status for any device other than desktop
        if (!Device.system.desktop) {
          this._bLegendClicked = false;
        }
        if (oLabel) {
          oLabel.innerText = this._oBundle.getText(sCustomText);
          oLabel.className += " customTooltip";
          oTooltipDomNode[0][0].querySelectorAll(".v-closeButton")[0].style.left = oLabel.offsetWidth + 10 + "px";
        }
      }
    },

    _handleRouterMatched: function(oEvent) {
      if (oEvent.getParameter("name") === "PolicyCheck3MAOverview") {
    	this.isPolicyCheck3MAOverviewPage = true;
        var data = JSON.parse(oEvent.getParameter("arguments").data);
        var that = this;
        var fnSuccess = function(oData) {
            if (oData && oData.length > 0) {
              that.oView.getModel("select").setData(oData);
              that.iPolicyholderId = oData[0].PROSPECT_ID;
              that.iInsuredId = oData[0].PROSPECT_ID;
              that.oView.getModel("selectData").setProperty("/INSURED_ID", oData[0].PROSPECT_ID);
              that.oView.getModel("selectData").setProperty("/PROSPECT_NAME", oData[0].PROSPECT_NAME);
              that.oView.getModel("selectData").setProperty("/INS_NAME", oData[0].PROSPECT_NAME);
              that.oView.getModel("selectData").setProperty("/PH_NAME", oData[0].PROSPECT_NAME);
              that.loadData();
            } else {
              //this.displayErrorDialog("The Prospect List data is empty.");
            }
          };
        var fnError = function(oData) {
            //this.displayErrorDialog("Can not load prospect data service. Service url is: " + sProspectService);
          };
        var this.iPolicyCheckId = data.MasterPkId;
        // Sync call to /csiroot/cservlet/PolicyCheckServlet?/getProspectList.pcdo
        backendHelper.getProspectList(this.iPolicyCheckId, fnSuccess, fnError, true);
      }
    },
    
    onAfterRendering: function() {
//      this.loadData();
    },

    onChange: function(oEvent) {
      var oSelect = oEvent.getSource(),
        oModel = oSelect.getModel("selectData"),
        sPath;
      switch (oSelect.data("person")) {
        case "insured":
          sPath = "/INS_NAME";
          this.iInsuredId = oSelect.getSelectedKey();
          this.loadDataInsuredPerson();
          break;
        case "policyholder":
          sPath = "/PH_NAME";
          this.iPolicyholderId = oSelect.getSelectedKey();
          this.loadDataPolicyholder();
          break;
        default:
          sPath = "/PROSPECT_NAME";
      }
      oModel.setProperty(sPath, oSelect.getSelectedItem().getText());
    },

    displayErrorDialog: function(sError) {
      var sMessage = sError + " \nPlease contact the System Administrator.";
      // var bCompact = !!this.getView().$().closest(".sapUiSizeCompact").length;
      // sap.m.MessageBox.show(sMessage, {
      //   icon: sap.m.MessageBox.Icon.WARNING,
      //   title: "Warning",
      //   styleClass: bCompact ? "sapUiSizeCompact" : ""
      // });
      console.log(sError);
    },

    createTemplateChartData: function(sPersonId, sUnit) {
      var i, sName = " ",
        aChartData = [],
        aBusinessPartners = this.oView.getModel("select").getData();

      // search for the Prospect Name
      for (i = aBusinessPartners.length - 1; i >= 0; i--) {
        if (aBusinessPartners[i].PROSPECT_ID === sPersonId) {
          sName = aBusinessPartners[i].PROSPECT_NAME;
          break;
        }
      }

      // Age will be used as index for the template
      for (i = 0; i <= 110; i++) {
        aChartData.push({
          AGE: i,
          POLHDR_ID: sPersonId,
          INSURED_ID: sPersonId,
          NAME: sName,
          PREMIUM: 0,
          UNIT: sUnit || this._oBundle.getText("NTD")
        });
      }
      return aChartData;
    },
    
    loadData3MABenefitProjection: function(successCallBack) {
        var that = this,
      fnMedicalSuccessOrError = function(oData) {
        var aBenefitData = that.mockUp3MABenefitProjectionData();
        jQuery.extend(true, aBenefitData, oData);
        aBenefitData.map(function(oItem) {
          // C7 Max BENEFIT
          var sBenefit = oItem.BENEFIT;
          if ((typeof oItem.BENEFIT) === "string") {
            var aBenefit = oItem.BENEFIT.split("~");
            if (oItem.CODE.substr(0,2) === "C7") {
              sBenefit = aBenefit[aBenefit.length - 1];
            } else {
              sBenefit = aBenefit[0];
            }
          }
          that.oView.getModel("projectionData").setProperty("/" + oItem.CODE, { DESCRIPTION: oItem.DESCRIPTION, BENEFIT:sBenefit , UNIT: oItem.UNIT || that._oBundle.getText("NTD") });
        });
        that.byId("benefitProjection").setBusy(false);
        if (successCallBack) {
            successCallBack();
        }
      };
      
      this.byId("benefitProjection").setBusy(true);

      // Async call to /csiroot/cservlet/PolicyCheckServlet?/get3MABenefitProjection.pcdo
      return backendHelper.get3MABenefitProjection(this.iPolicyCheckId, this.iInsuredId, fnMedicalSuccessOrError, fnMedicalSuccessOrError, true);
    },
    
    reload3MACss: function(reload3MAFg) {
        //當3MA寬度>1300px時，縮小字體及label寬度
	    var benefitProjectionList = document.getElementsByClassName("benefitProjection");
	  	if(parseInt(benefitProjectionList[0].offsetWidth) < 1300){
	  		var accountIconList = document.getElementsByClassName("accountIcon");
		  	var infoLabelList = document.getElementsByClassName("infoLabel");
		  	var numericLabelList = document.getElementsByClassName("numericLabel");
		  	var unitLabelList = document.getElementsByClassName("unitLabel");
	  		var rate = parseInt(benefitProjectionList[0].offsetWidth)/1300;
	  		
	  		//除數字會變動，圖片、邊框、單位只執行一次
	  		if(reload3MAFg) {
		  		for(var i=0 ; i<accountIconList.length ; i++){
		  			accountIconList[i].style.width = accountIconList[i].offsetWidth*rate + "px";
		  			accountIconList[i].style.height = accountIconList[i].offsetHeight*rate + "px";
		  			accountIconList[i].style.backgroundSize = "cover";
		  		}
		  		for(var i=0 ; i<infoLabelList.length ; i++){
		  			infoLabelList[i].style.width = infoLabelList[i].offsetWidth*rate + "px";
		  			infoLabelList[i].style.fontSize = 10*rate + "px";
		  		}
		  		for(var i=0 ; i<infoLabelList.length ; i++){
		  			unitLabelList[i].style.fontSize = 10*rate + "px";
		  			if(rate < 1){
		  				unitLabelList[i].parentNode.style.paddingBottom = "0.25rem";
		  			}
		  		} 
	  		}
	  		for(var i=0 ; i<numericLabelList.length ; i++){
	  			if(numericLabelList[i].innerText.length > 5){
	  				numericLabelList[i].style.fontSize = 1.2*rate + "rem";
	  			}	else {
	  				numericLabelList[i].style.fontSize = 2*rate + "rem";
	  			}
	  		}
	  	}
    },
//    loadDataBenefitProjection: function() {
//        var that = this;
//	    this.loadData3MABenefitProjection(function () {
//	        that.loadDataPolicyholder();
//	        that.loadDataInsuredPerson(true); 
//	    });
//    },

    loadDataPolicyholder: function() {
      //get policy holder age now
//      var aBusinessPartners = this.oView.getModel("select").getData(),
//      mBusinessPartnersAge = {};
//      aBusinessPartners.forEach(function(oItem) {
//        mBusinessPartnersAge[oItem.PROSPECT_ID] = formatter.currentInsuranceAge(oItem.BIRTHDATE_TS).iYearDiff;
//      });
//      var ageNow = mBusinessPartnersAge[this.iPolicyholderId];
      var that = this,
        oPolicyholderChart = that.byId("idVizFrameStackedColumnPolicyHolder"),
        fnPolicyholderSucessOrError = function(aData) {
    	  //financial impact
//    	  if(aData.length > 0) {
//    		  that.isFinancialImpact_PolicyHolder = aData[0].IS_FINANCIAL_IMPACT;
//    	  }
          var aPolicyholderCoverage = that._formatChartData(aData, "POLHDR_ID");
          oPolicyholderChart.setBusy(false);
          // Set model to chart
          oPolicyholderChart.setModel(new JSONModel(aPolicyholderCoverage));
          oPolicyholderChart.setVizProperties({ valueAxis: { title: { text: that._oBundle.getText("AMOUNT_X", [aPolicyholderCoverage[0].UNIT || that._oBundle.getText("NTD")]) } } });
        };
      // Async call to /csiroot/cservlet/PolicyCheckServlet?/getPremiumProjection.pcdo
      oPolicyholderChart.setBusy(true);
      return backendHelper.getPremiumProjection(this.iPolicyCheckId, this.iPolicyholderId, 0, fnPolicyholderSucessOrError, fnPolicyholderSucessOrError);
    },

    loadDataInsuredPerson: function(isInit) {
      //get insured person age now
//      var aBusinessPartners = this.oView.getModel("select").getData(),
//      mBusinessPartnersAge = {};
//      aBusinessPartners.forEach(function(oItem) {
//        mBusinessPartnersAge[oItem.PROSPECT_ID] = formatter.currentInsuranceAge(oItem.BIRTHDATE_TS).iYearDiff;
//      });
//      var ageNow = mBusinessPartnersAge[this.iInsuredId];
      var that = this,
        oInsuredChart = that.byId("idVizFrameStackedColumnInsured"),
        fnInsuredSucessOrError = function(aData) {
    	  //financial impact
    	  if(aData.length > 0) {
    		  that.isFinancialImpactInsured = aData[0].IS_FINANCIAL_IMPACT_INSURED;
    	  }
          var aInsuredCoverage = that._formatChartData(aData, "INSURED_ID");
          oInsuredChart.setBusy(false);
          // Set model to chart
          oInsuredChart.setModel(new JSONModel(aInsuredCoverage));
          oInsuredChart.setVizProperties({ valueAxis: { title: { text: that._oBundle.getText("AMOUNT_X", [aInsuredCoverage[0].UNIT || that._oBundle.getText("NTD")]) } } });
        };
      oInsuredChart.setBusy(true);
      if (!isInit) {
          this.loadData3MABenefitProjection();
      }
      // Async call to /csiroot/cservlet/PolicyCheckServlet?/getPremiumProjection.pcdo
      return backendHelper.getPremiumProjection(this.iPolicyCheckId, this.iInsuredId, 1, fnInsuredSucessOrError, fnInsuredSucessOrError, true);

    },

    _formatChartData: function(aData, sIdType) {
      var oProspectList = {},
        aCoverage = [],
        that = this;
      sIdType = sIdType ? sIdType : "POLHDR_ID";
      if (aData.length === 0) {
        // TemplateChartData
        aCoverage = this.createTemplateChartData(sIdType == "POLHDR_ID" ? this.iPolicyholderId : this.iInsuredId);
      } else {
        // map all insured/policyholder in the response in separated arrays
        aData.forEach(function(oItem) {
          if (!oProspectList[oItem[sIdType]]) {
            oProspectList[oItem[sIdType]] = {
              data: [],
              unit: oItem.UNIT || that._oBundle.getText("NTD")
            };
          }
          oProspectList[oItem[sIdType]].data.push({
            AGE: +oItem.AGE,
            PREMIUM: oItem.PREMIUM,
            UNIT: oItem.UNIT
          });
        });
        // Merge template to each insured/policyholder real data
        Object.keys(oProspectList).forEach(function(sProspectId) {
          var aTemplateChartData = that.createTemplateChartData(sProspectId, oProspectList[sProspectId].unit);
          // replace real data
          oProspectList[sProspectId].data.forEach(function(oItem) {
            //Make sure that template data contains a value for the age
            if (aTemplateChartData[oItem.AGE]) {
              aTemplateChartData[oItem.AGE].PREMIUM = oItem.PREMIUM;
              aTemplateChartData[oItem.AGE][sIdType] = sProspectId;
              aTemplateChartData[oItem.AGE].UNIT = oItem.UNIT;
            }
          });
          aCoverage = aCoverage.concat(aTemplateChartData);
        });
      }

      // filter data by age limits (maximum of 110 and minimum calculated for each person)
      aCoverage = that.filterBPByAge(aCoverage, sIdType);
      
      return aCoverage;
    },

    loadData: function() {
      this.oView.setBusy(true);
      var that = this;
      $.when(this.loadData3MABenefitProjection()).then(function(data) {
    	  that.loadDataPolicyholder();
    	  that.loadDataInsuredPerson(true);
       }).then(function(data) {
    	   that.isFinancialImpact = that.isFinancialImpactInsured;
    	   that.byId("policyCheck3MAOverviewWarning1").setVisible(that.isFinancialImpact);
       });
      this.oView.setBusy(false);
    },

    filterBPByAge: function(aOriginalMap, sIdType) {
      var aBusinessPartners = this.oView.getModel("select").getData(),
        mBusinessPartnersAge = {};
      
      // Build a map to retrieve the age of the business partner from its id
      aBusinessPartners.forEach(function(oItem) {
        mBusinessPartnersAge[oItem.PROSPECT_ID] = formatter.currentInsuranceAge(oItem.BIRTHDATE_TS).iYearDiff;
      });

      // Filter according to each person's initial age and maximum of 110 years old.
      return aOriginalMap.filter(function(oItem) {
        return mBusinessPartnersAge[oItem[sIdType || "INSURED_ID"]] <= oItem.AGE && oItem.AGE <= 110;
      });
    },
    
    lifeHelpIcon: function(oEvent) {
    	var oButton = oEvent.getSource();
    	this._openPopover("LifeHelpPopover", oButton);
    },
    
    medicalHelpIcon: function(oEvent) {
    	var oButton = oEvent.getSource();
    	this._openPopover("MedicalHelpPopover", oButton);
    },
    
    financeHelpIcon: function(oEvent) {
    	var oButton = oEvent.getSource();
    	this._openPopover("FinanceHelpPopover", oButton);
    },
    
    _openPopover : function(name, oButton) {
    	// create popover
		this._oPopover = sap.ui.xmlfragment("fs.agsipw.prospect.policycheck.fragment.popover." + name, this);
		this.getView().addDependent(this._oPopover);

		this._oPopover.openBy(oButton);
    },

    mockUp3MABenefitProjectionData: function() {
      var oModel = new sap.ui.model.json.JSONModel();
      oModel.loadData(jQuery.sap.getModulePath("fs.agsipw.prospect.policycheck") + "/model/3MABenefitProjection.json", undefined, false);
      // Return data
      return oModel.getData();
    },
	onCreateProposalButtonPress: function() {
      var oXNavService = sap.ushell && sap.ushell.Container && sap.ushell.Container.getService && sap.ushell.Container.getService("CrossApplicationNavigation");
      var sHash = (oXNavService && oXNavService.hrefForExternal({
        target: {
          semanticObject: "ENB",
          action: "e2e"
        },
        params: {}
      })) || "";
      sap.m.URLHelper.redirect(window.location.href.split("#")[0] + sHash + "&/ProposalProspectSearch", true);
    }
    
  });
});
