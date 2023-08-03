import Mock from 'mockjs'
import homeFootApi from './mockData/homeFoot'
import homeHaed from './mockData/homeHaed'
import homeIt from './mockData/homeIt'
import xmIt from './mockData/xmIt'
import aboutHome from './mockData/aboutHome'
Mock.mock('/homeFoot/getData', homeFootApi.getHomeFootData)
Mock.mock('/homeHaed/getData', homeHaed.getHomeHaedData)
Mock.mock('/homeIt/getData', homeIt.getItData)
Mock.mock('/xmIt/getData', xmIt.getXmitData)
Mock.mock('/aboutHome/getData', aboutHome.getAboutHomeData)