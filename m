Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6DE3621B
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 19:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EeHUqIfKcaA37JGD4XjbxLJvQDAI7WakYVbVTR1okQs=; b=tYTDe42JZ8c8dOEO/vVd9snkC
	+XF3bUgtnN/QDEziwxdQo0/CfVGSHHMiicCPnkm6GGIMCDY1cHdDdRmLRYISOM5bNCxidfyyK/3VC
	E9VQm4J07mxkyBY3bSXr/Pvad0ugX7w742fP8SydZAI6yhwDOIk6tAnp81L2Q7wcYwgx8yD+wJfH5
	XNz1ocVs/WKBxOmtiNMrQ/MxVQ8hR2KJ1rcOkx+w2YzU6rTchuPlDP3FSu52KDP3tsMMXCoukxPps
	3PmqtxrJvTSd1JMJnHm57Ky4YCuJ+kzV45jkrb5sCkoyT29q9ywRUVCCaa6ZnJHJKNd9c4KXGVH1L
	/04Jbsckg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZS0-0007FF-Tb; Wed, 05 Jun 2019 17:11:48 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZRt-0007Eq-Rz
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 17:11:43 +0000
Received: from p5dcfbfee.dip0.t-ipconnect.de ([93.207.191.238]
 helo=[192.168.1.159])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hYZRs-0006Lv-2N; Wed, 05 Jun 2019 19:11:40 +0200
To: =?UTF-8?Q?Karl_P=c3=a1lsson?= <karlp@etactica.com>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <20190605171030.6645-1-karlp@etactica.com>
From: John Crispin <john@phrozen.org>
Message-ID: <ea98618c-c59b-ac6a-d1d1-056e7484a004@phrozen.org>
Date: Wed, 5 Jun 2019 19:11:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605171030.6645-1-karlp@etactica.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_101142_055180_7483DD22 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain: replace LEDE in help text
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDA1LzA2LzIwMTkgMTk6MTAsIEthcmwgUMOhbHNzb24gd3JvdGU6Cj4gVXNlIGdlbmVyaWMg
d29yZGluZy4KPgo+IFNpZ25lZC1vZmYtYnk6IEthcmwgUGFsc3NvbiA8a2FybHBAZXRhY3RpY2Eu
Y29tPgo+IC0tLQo+ICAgdG9vbGNoYWluL0NvbmZpZy5pbiB8IDQgKystLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS90
b29sY2hhaW4vQ29uZmlnLmluIGIvdG9vbGNoYWluL0NvbmZpZy5pbgo+IGluZGV4IDgyZGRkYmMy
MDkuLmU3NmU2MmUzNGYgMTAwNjQ0Cj4gLS0tIGEvdG9vbGNoYWluL0NvbmZpZy5pbgo+ICsrKyBi
L3Rvb2xjaGFpbi9Db25maWcuaW4KPiBAQCAtNDIsNyArNDIsNyBAQCBtZW51Y29uZmlnIEVYVEVS
TkFMX1RPT0xDSEFJTgo+ICAgCWJvb2wKPiAgIAlwcm9tcHQgIlVzZSBleHRlcm5hbCB0b29sY2hh
aW4iICBpZiBERVZFTAo+ICAgCWhlbHAKPiAtCSAgSWYgZW5hYmxlZCwgTEVERSB3aWxsIGNvbXBp
bGUgdXNpbmcgYW4gZXhpc3RpbmcgdG9vbGNoYWluIGluc3RlYWQgb2YKPiArCSAgSWYgZW5hYmxl
ZCwgdGhlIGJ1aWxkcm9vdCB3aWxsIGNvbXBpbGUgdXNpbmcgYW4gZXhpc3RpbmcgdG9vbGNoYWlu
IGluc3RlYWQgb2YKPiAgIAkgIGNvbXBpbGluZyBvbmUuCj4gICAKPiAgIAljb25maWcgTkFUSVZF
X1RPT0xDSEFJTgo+IEBAIC01MSw3ICs1MSw3IEBAIG1lbnVjb25maWcgRVhURVJOQUxfVE9PTENI
QUlOCj4gICAJCWRlcGVuZHMgb24gRVhURVJOQUxfVE9PTENIQUlOCj4gICAJCXNlbGVjdCBOT19T
VFJJUAo+ICAgCQloZWxwCj4gLQkJICBJZiBlbmFibGVkLCBMRURFIHdpbGwgY29tcGlsZSB1c2lu
ZyB0aGUgbmF0aXZlIHRvb2xjaGFpbiBmb3IgeW91cgo+ICsJCSAgSWYgZW5hYmxlZCwgdGhlIGJ1
aWxkcm9vZCB3aWxsIGNvbXBpbGUgdXNpbmcgdGhlIG5hdGl2ZSB0b29sY2hhaW4gZm9yIHlvdXIK
CnMvZC90LwoKIMKgwqDCoCBKb2huCgoKPiAgIAkJICBob3N0IGluc3RlYWQgb2YgY29tcGlsaW5n
IG9uZS4KPiAgIAo+ICAgCWNvbmZpZyBUQVJHRVRfTkFNRQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
