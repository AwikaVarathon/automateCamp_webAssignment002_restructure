*** Settings ***
Resource        ${CURDIR}/Keywords/common.robot
# Resource - feature
Resource        ${CURDIR}/Keywords/features/login_feature.robot
Resource        ${CURDIR}/Keywords/features/clicklink_feature.robot
# Resource - pages
Resource        ${CURDIR}/Keywords/pages/page_cart.robot
Resource        ${CURDIR}/Keywords/pages/page_categories.robot
Resource        ${CURDIR}/Keywords/pages/page_listproducts.robot
Resource        ${CURDIR}/Keywords/pages/page_login.robot
Resource        ${CURDIR}/Keywords/pages/page_product.robot
Resource        ${CURDIR}/Keywords/pages/page_userinfo.robot
Resource        ${CURDIR}/Keywords/pages/section_masthead.robot
Resource        ${CURDIR}/Keywords/pages/section_sidebar.robot
# Library
Library 		SeleniumLibrary