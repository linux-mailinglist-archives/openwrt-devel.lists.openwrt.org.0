Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334471432F9
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 21:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m+eLTdSql7oPwSftAdOCP9rL188PcG8DJ8EYg9/tshU=; b=XzYFmrBiVeNuCK
	ytH7hJSljyxCgH7PL3ZxiJ4UWHvqDUYoaSwWNU/E7bWtvkT+bXiQ3rzgPeiHqdnpGlj8MD/+0IBR1
	ml3arfabLIKK3escC2mNbePntx900s2VjNm5qBiA02HM5o1pdqnleee8/JsrAkfF9uXCh2dHrQx3J
	DZRaGl0/RRbZ/og+roYhKNLWUPtmnUMO9ozpRIIDqlR/9ZYALcur8VRyOOUmvjikQt2Rui1OlQzsU
	Y0+JtPjj81BW1e2QxmcM8DJhnaZFUgofo5l25UMLjGIUqSLmdHMPcLl99TYyQ/dndBRyseV2zt48q
	Xrhk5k+7B/NgAJlOEFzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdrs-0004AZ-3Q; Mon, 20 Jan 2020 20:41:52 +0000
Received: from mail-eopbgr1370101.outbound.protection.outlook.com
 ([40.107.137.101] helo=AUS01-SY3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdrj-00049s-3G
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 20:41:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GoidQKhkrhdnxEq93uKsAeZTyJFtlq869KQ+6ACtxu/FQikWGeIu+dawFuc2FDm9RYq8snrvRGifqa8BQL7LKKqBGTG6q8ROinB0q9FtzoHNJCyEPUKRJfjwpP7B198MRWx7ggq71EyQUlIPTpWXmPk5eLtnSUNtckHKKge3pTRq9pkZW0Kd+kidATzVlS7c3qCXfejnVd4y3YQxTHw/WhedjFwsd5MMs5cECP7u6mn1F8HyhPuE+EMNfujzzuB2UZ3hWJ/iG7On3M8n0YIQDR5tgONC1eHT8i6ay1eA4BVaPcA0Z5SffqrYXfJJNt7ZJMRab5qDNx4bDAvSuKCfHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=al9e+HlduAVAu1M6s0/BWw3FxAWeqT1zgLn0XCO3iTg=;
 b=hTLr2zk/murhizx6mUSwykSyRncqwS4H9ewH5Zao9VFAjSMvb8159HEYWatwHq6bIWoWD9Kr33D/wtTtsaXXAa73THyXbNRqQfEXbODbaejKU/mua3/0/0InUPBzigrevp1FIltkmO08QqAXY0yZZu6hS4F3RJsJuFBk4qtCOUm+WjhkHeiItMw6d4Ff27vDC1kmNXOj+ozOqt8T6ADO1Y2Gvt4AsttqELTVQU4JZ6NzPjSi8VbeIMH7pxn1U4bgVG5ijLnIgRgoq1IjFy5oq42FpeSdOhzOPlYp8X/1yTAcSVOD4yMb4g49+CQNB1WhUzNFPI/n139aktukVYwCmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 114.110.34.227) smtp.rcpttodomain=lists.openwrt.org smtp.mailfrom=4rf.com;
 dmarc=bestguesspass action=none header.from=4rf.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
 s=selector1-4rf-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=al9e+HlduAVAu1M6s0/BWw3FxAWeqT1zgLn0XCO3iTg=;
 b=jo3Zlv6c4XtZ2Ac+UD/aLMtbjM8w6JYPg9ImRkeXbMf2tK0XtFUZU8s36KJuMYOUH1K6B3ACal5Vi5ozA1JwzfVTBH9EaLLD04emKwE5lHEkL7wGHt7TB2zjbUOIiczxSGML/CaDMmNA+mVuTY1wWAWdMO47WKHeCZ20VqBJBWg=
Received: from SY4P282CA0004.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:a0::14) by
 SY4P282MB1084.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:ac::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Mon, 20 Jan 2020 20:41:33 +0000
Received: from SG2APC01FT116.eop-APC01.prod.protection.outlook.com
 (2a01:111:f400:7ebe::205) by SY4P282CA0004.outlook.office365.com
 (2603:10c6:10:a0::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend
 Transport; Mon, 20 Jan 2020 20:41:33 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
 smtp.mailfrom=4rf.com; lists.openwrt.org; dkim=none (message not signed)
 header.d=none;lists.openwrt.org; dmarc=bestguesspass action=none
 header.from=4rf.com;
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
 114.110.34.227 as permitted sender) receiver=protection.outlook.com;
 client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
 SG2APC01FT116.mail.protection.outlook.com (10.152.250.216) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2644.19 via Frontend Transport; Mon, 20 Jan 2020 20:41:31 +0000
Received: from 4rf-nz-exchange.local.4rf.com (fd00:192:168::114) by
 4rf-nz-exchange.local.4rf.com (fd00:192:168::114) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Tue, 21 Jan 2020 09:41:29 +1300
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
 mapi id 15.00.1395.000; Tue, 21 Jan 2020 09:41:29 +1300
From: Reuben Dowle <reuben.dowle@4rf.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] dnsmasq: Ignore carrier status for bridge interfaces
Thread-Index: AdXPz2ER+Q37D+2XQ66sa3+i2atL4w==
Date: Mon, 20 Jan 2020 20:41:29 +0000
Message-ID: <c53d5e45cc17448085c606d7d3245b34@4rf-nz-exchange.local.4rf.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [fd00:192:168:0:a163:ab07:870e:1f6f]
x-c2processedorg: b87d8f4e-38aa-47ad-a534-2cc14c7a88c7
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:114.110.34.227; IPV:; CTRY:NZ; EFV:NLI;
 SFV:NSPM;
 SFS:(10019020)(376002)(39830400003)(136003)(346002)(396003)(199004)(189003)(6916009)(316002)(508600001)(24736004)(44832011)(356004)(336012)(108616005)(426003)(7696005)(2906002)(86362001)(81156014)(26005)(8676002)(5660300002)(186003)(70206006)(70586007)(55016002)(8936002)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SY4P282MB1084; H:mail.4rf.com; FPR:; SPF:Pass;
 LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b7951580-e073-4cf7-ae59-08d79de92201
X-MS-TrafficTypeDiagnostic: SY4P282MB1084:
X-Microsoft-Antispam-PRVS: <SY4P282MB1084345527093EE369F451CFC5320@SY4P282MB1084.AUSP282.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0288CD37D9
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nsv4+bEMfPTx9PO+1jv8rs7o+wOSmpS7RcI+hBdIVGYVXw1ajHK5xk2DVlqVIHq9ASv8DKg+IpN3aykX5K49eL/vYjxdYXzHEgbJPHEt0pvYFYFKJeedDZiVZvXl8RhkZbpaETiaTWI6GLzjvtYXHXfP4Pv6ccNywFSbOE/0kGgEVWdaJpwvOrHSkri4acrzs4RS20VywtpxidsAgbtrQ4oBWnyIwP3++PuDCfVpeJKuGnPQ94oQrdji7zjDaizHRDEhlGFoj2RsgHm8ENYtb0TF2EB5M22V6eEeSO36cQ+pJI33GziUwCqzfpzw3EM7k6N8NzCO78OodN1JyWKz9JrudTd6ag2wfGbQforMBMkJ1du0gWkJ4Gklu4P8+BXJXqe1aJH8i2FohNn+rLKlscRNNNKh98IIYh4amuEYl4HRcuNSBYhBKdXqa5ZyWRhf
X-OriginatorOrg: 4rf.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2020 20:41:31.3716 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b7951580-e073-4cf7-ae59-08d79de92201
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208; Ip=[114.110.34.227];
 Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY4P282MB1084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_124143_283026_EB3CA29A 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.137.101 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] dnsmasq: Ignore carrier status for bridge
 interfaces
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

dnsmasq sometimes does not listen for DHCP at bootup on lan (see bug FS#1765).

This occurs because netifd can incorrectly indicate carrier down on an
interface through devstatus after issuing a carrier up hotplug event.

This patch ignores carrier status for bridge interfaces, as this does not
reflect media state so is not a useful check.

Signed-off-by: Reuben Dowle <reuben.dowle@4rf.com>
---
 package/network/services/dnsmasq/files/dnsmasq.init | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/package/network/services/dnsmasq/files/dnsmasq.init b/package/network/services/dnsmasq/files/dnsmasq.init
index ae02f32..dd9874b
--- a/package/network/services/dnsmasq/files/dnsmasq.init
+++ b/package/network/services/dnsmasq/files/dnsmasq.init
@@ -104,9 +104,12 @@ dhcp_check() {

 # If there's no carrier yet, skip this interface.
 # The init script will be called again once the link is up
-case "$(devstatus "$ifname" | jsonfilter -e @.carrier)" in
-false) return 1;;
-esac
+local carrier
+local type
+eval $(devstatus "$ifname" | jsonfilter -e "carrier=@.carrier" -e "type=@.type")
+if [ "$carrier" = "false" -a "$type" != "bridge" ]; then
+return 1
+fi

 udhcpc -n -q -s /bin/true -t 1 -i "$ifname" >&- && rv=1 || rv=0

--
2.7.4


The information in this email communication (inclusive of attachments) is confidential to 4RF Limited and the intended recipient(s). If you are not the intended recipient(s), please note that any use, disclosure, distribution or copying of this information or any part thereof is strictly prohibited and that the author accepts no liability for the consequences of any action taken on the basis of the information provided. If you have received this email in error, please notify the sender immediately by return email and then delete all instances of this email from your system. 4RF Limited will not accept responsibility for any consequences associated with the use of this email (including, but not limited to, damages sustained as a result of any viruses and/or any action or lack of action taken in reliance on it).
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
