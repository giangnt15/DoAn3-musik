import React from 'react';
import { Dropdown, Avatar, Badge, Icon, Layout, Menu } from 'antd';
import App from '../app/App';

const adminAccDropdown = (
    <Menu>
        <Menu.Item>
            <Icon type="setting"/>
            <span>Settings</span>
        </Menu.Item>
        <Menu.Item>
            <Icon style={{padding: '0px'}}type="profile"/>
            <span >Profile</span>
        </Menu.Item>
        <Menu.Item>
            <Icon type="logout"/>
            <span>Logout</span>
        </Menu.Item>
    </Menu>
)


class AppHeader2 extends React.Component{
    render(){
        return(
            <Layout >
            <Layout.Header style={{ background: '#fff', padding: '0px'}} className="header-ctn" >
            <div className="header">
                      {/* <div className="search-form">
                          <input type="search" name="search" placeholder='Search...' />
                          <button style={{position: 'relative'}}><i style={{position: 'absolute',
                          top: '30%',right: '30%'}}
                          className="fa fa-search"></i></button>
                      </div> */}
                      <div className="header-right">
                          {/* <div className="tool-bar">
                              <Dropdown overlay={adminAccDropdown}
                               trigger={['click']}>
                                  <a className="ant-dropdown-link" href="ab">
                                      <Badge count={1} offset={[0,5]} >
                                      <Icon style={{fontSize: '22px'}}  type="mail"></Icon></Badge>
                                  </a>
                              </Dropdown>
                              <Dropdown overlay={adminAccDropdown} trigger={['click']}>
                                  <a className="ant-dropdown-link" href="ab">
                                      <Badge count={1} offset={[0,5]}>
                                      <Icon style={{fontSize: '22px'}} type="bell"></Icon></Badge>
                                  </a>
                              </Dropdown>
                          </div> */}
                          <div className="header-account">
                              <Dropdown overlay={adminAccDropdown} trigger={['click']} placement="topRight">
                                  <a className="ant-dropdown-link" href="ab">
                                  <Avatar size='large' style={{marginRight: '10px'}}
                                      src="https://png.pngtree.com/svg/20161027/631929649c.svg"
                                      alt="" />
                                  <div className="header-account-right">
                                      <p>
                                         Nguyen Truong Giang
                                      </p>
                                  </div>
                                  </a>
                              </Dropdown>
                          </div>
                      </div>
                  </div>
            </Layout.Header>
            </Layout>
        )
    }
}

export default AppHeader2;