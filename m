Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041FE1B0C56
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RDOy7AaCwpuK2TjkrwVbTsJ/q+GzycYNNWjwgVDgpkY=; b=WyMW+dOceLtUmD
	gDD/qLf/Ok+aGtrIL55RpcbUabzUYPHSX5gsbDLrhXjAcuMSF6qVkLvWZM1bGkbrC1rnoHAAz2ak6
	rFOeqyBdV8SHrGgPKOAKJt9AzbtJcPwGFEe7c6+IwsWz6uSmhqkQr4IF+wcc51I98eMzXt9HPlLyH
	Vk4sW+5zSwtWT6uzCq+WuwLaMBtLGrfmpdCxn6cvctR7ZmoC6qkIri6nHRqQbdwnBrSfWMfDXlu+i
	ivnpsO8V1cRLK/+qPp29SCoJsiDxICB5spFZ51lzNy6KWRrWUjQgmEjGc5BgdOsictZ28ZLaSyGUd
	I6o+8EpgWhgyFFNZpZpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWFV-00053p-JR; Mon, 20 Apr 2020 13:14:09 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWFL-0004vv-TY
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:14:01 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 12BB16004B;
 Mon, 20 Apr 2020 15:13:47 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 12BB16004B
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 12BB16004B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587388428; bh=iXJIbxBESO3JOhLRsYNHjcsCNFsMOfeTmpkSd//LB1w=;
 h=From:To:Cc:Subject:Date:From;
 b=vXclCmKngWCcLHqg82XvcuGqC43kWHc4I6Aox7uodF8QjsLky4tM7DLsvwjMc3WRH
 3x4I39L+0yHh6eIPmC9tnzqeZt2BYREyY7htxQsN6Pk7zKxlY7IZLmYs5Ylf3f/xuR
 bIMm/KJqmOHO+a0/SiYTxfOQ7M5WYzFuzmsuThKU=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:13:46 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:13:30 +0200
Message-Id: <20200420131336.18252-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_061400_409279_17F7A608 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 0/6] MTD parser for RouterBoot
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rm9sbG93aW5nIHN1Z2dlc3Rpb24gZnJvbSBSYWZhxYIgTWnFgmVja2ksIHRoaXMgcGF0Y2hzZXQg
aW50cm9kdWNlcyBhbiBPRi1zdHlsZQpNVEQgcGFyc2VyIHRvIHByb2Nlc3MgTWlrcm9UaWsgUm91
dGVyQk9BUkQgIlJvdXRlckJvb3QiIHBhcnRpdGlvbnMuCgpPbiBNaWtyb1RpayBkZXZpY2VzLCB0
aGUgU1BJLU5PUiBjaGlwIGNvbnRhaW5zIGEgc2VnbWVudCBjb21wcmlzZWQgb2YgdGhlCmJvb3Rs
b2FkZXIgYW5kIHNvbWUgYWRkaXRpb25hbCBwYXJ0aXRpb25zIHRoYXQgY2FuIGJlIGlkZW50aWZp
ZWQgdmlhIG1hZ2ljCm51bWJlcnMuIFRoZSBjb250ZW50IG9mIHRoZXNlIGlkZW50aWZpYWJsZSBw
YXJ0aXRpb25zIGlzIHVzZWQgYnkgT3BlbldSVC4KClRoZSByYXRpb25hbGUgZm9yIHRoaXMgcGF0
Y2hzZXQgaXMgdGhyZWVmb2xkOgogMS8gUmVzdG9yZSBhIHByZWV4aXN0aW5nIGJlaGF2aW9yIGZy
b20gYXI3MXh4IGFuZCBwb3RlbnRpYWxseSBhdm9pZCBicmVha2FnZQogMi8gU2ltcGxpZnkgYm9v
dHN0cmFwaW5nIG5ldyBSb3V0ZXJCT0FSRCBkZXZpY2VzIHRvIE9wZW5XUlQKIDMvIExheSB0aGUg
Z3JvdW5kd29yayBmb3Igc2luZ2xlIGltYWdlIHN1cHBvcnQgZm9yIFJvdXRlckJPQVJEIGRldmlj
ZXMKCkluIG1vcmUgZGV0YWlsczoKCiAxLyBFeGlzdGluZyBiZWhhdmlvciBhbmQgcmlzayBvZiBi
cmVha2FnZToKT24gYXI3MXh4LCB0aGUgY29kZSBpbiByb3V0ZXJib290LmMgYWxyZWFkeSBwZXJm
b3JtcyB0aGUgZHluYW1pYyBhZGp1c3RtZW50Cm9mIHRoZSBoYXJkX2NvbmZpZyBhbmQgc29mdF9j
b25maWcgcGFydGl0aW9ucy4gVGhpcyBpcyBlc3BlY2lhbGx5IHVzZWZ1bCBvbgplLmcuIE5BTkQt
YmFzZWQgZGV2aWNlcywgd2hpY2ggaGF2ZSBvbmx5IGEgdmVyeSBzbWFsbCBTUEktTk9SIGNoaXAg
KHR5cGljYWxseQo2NEtCKSB3aGljaCBpdHNlbGYgY29udGFpbnMgYSBzbWFsbCBib290bG9hZGVy
IGFuZCBpdHMgYWNjb21wYW55aW5nIGhhcmRfY29uZmlnCmFuZCBzb2Z0X2NvbmZpZyBkYXRhLiBP
biB0aGVzZSBkZXZpY2VzLCBjb25zaWRlcmluZyB0aGUgc21hbGwgc2l6ZSBvZiB0aGUgTk9SCmZs
YXNoLCBpdCBpcyBhc3N1bWVkIHRoYXQgdGhlIHBhcnRpdGlvbnMgbWF5IGJlIHJlbG9jYXRlZCBv
biB0aGUgY2hpcCB0bwphY2NvbW9kYXRlIGNoYW5nZXMgaW4gdGhlIHNpemUgb2YgdGhlIGJvb3Rs
b2FkZXIuIFRoZXJlZm9yZSwgYXNzdW1pbmcKImZpeGVkLXBhcnRpdGlvbnMiIGluIERUUyAoaW4g
YXRoNzkgcG9ydCkgaXMgcHJvYmFibHkgYSBiYWQgaWRlYS4KCiAyLyBTaW1wbGlmeSBib290c3Ry
YXBpbmc6ClNpbmNlIE9wZW5XUlQgcmVhbGx5IG9ubHkgY2FyZXMgYWJvdXQgdGhlIGhhcmRfY29u
ZmlnICh0byBleHRyYWN0IGUuZy4gdGhlCk1BQyBhZGRyZXNzIGJhc2UsIGFuZCB0aGUgV0xBTiBj
YWxpYnJhdGlvbiBkYXRhKSBhbmQgc29mdF9jb25maWcgKHRvIGFkanVzdApzb21lIGJvb3Rsb2Fk
ZXIgcGFyYW1ldGVycyB2aWEgdGhlICdyYmNmZycgdXRpbGl0eSksIHRoaXMgcGFyc2VyIG1ha2Vz
IGl0CnBvc3NpYmxlIHRvIGJvb3QgYSBuZXcgZGV2aWNlIGZvciB3aGljaCBvbmx5IHRoZSBvdmVy
YWxsIHNpemUgb2YgdGhlIFJvdXRlckJvb3QKc2VnbWVudCBpcyBrbm93biAob3IgZ3Vlc3RpbWF0
ZWQpIGJ5IG9ubHkgc3BlY2lmeWluZyB0aGUgZm9sbG93aW5nIGluIERUUzoKCglwYXJ0aXRpb24w
QDAgewoJCWxhYmVsID0gIlJvdXRlckJvb3QiOwoJCXJlZyA9IDwweDAwMDAgMHgxMDAwMDA+OwoJ
CXJlYWQtb25seTsKCQljb21wYXRpYmxlID0gIm1pa3JvdGlrLHJvdXRlcmJvb3QtcGFydGl0aW9u
cyI7CgkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CgkJI3NpemUtY2VsbHMgPSA8MT47CgoJCWhhcmRf
Y29uZmlnIHsKCQkJcmVhZC1vbmx5OwoJCX07CgoJCXNvZnRfY29uZmlnIHsKCQl9OwoJfTsKClRo
ZSBwYXJzZXIgd2lsbCBhdXRvbWF0aWNhbGx5IGFzc2lnbiB0aGUgY29ycmVjdCBwYXJ0aXRpb25z
IG9uIHRoZSBNVEQgZGV2aWNlLgoKIDMvIFByZXBhcmluZyBncm91bmR3b3JrIGZvciBzaW5nbGUg
aW1hZ2Ugc3VwcG9ydApBc3N1bWluZyBpdCBldmVyIGJlY29tZXMgZGVzaXJhYmxlIHRvIG9mZmVy
IGEgc2luZ2xlLWltYWdlIGZvciBhbGwgc3VwcG9ydGVkClJvdXRlckJPQVJEIGRldmljZXMgKGEg
bGEgYXI3MXh4KSwgdGhpcyBwYXJzZXIgd2lsbCBncmVhdGx5IHNpbXBsaWZ5IHRoZSBzZXR1cApv
ZiBhIGNvbW1vbiBEVFNJIGZpbGUuCgpCb290bm90ZXM6ClRoZSBwYXJzZXIgc3RyaWN0bHkgYWRo
ZXJlcyB0byBEVFMgU3BlY2lmaWNhdGlvbiBSZWxlYXNlIDAuMy4gU2luY2UgaXQgaXMgbm90CnZh
bGlkIHRvIGhhdmUgbXVsdGlwbGUgY2hpbGQgbm9kZXMgd2l0aCB0aGUgc2FtZSBub2RlLW5hbWUg
d2hlbiBubyB1bml0LWFkZHJlc3MKaXMgc3BlY2lmaWVkLCB0aGUgZm9sbG93aW5nIHNlcmllcyBw
cm9wb3NlcyB0byB1c2UgdGhlIG5vZGUtbmFtZSB0byBuYW1lCnRoZSBkeW5hbWljIHBhcnRpdGlv
bnMuIFRoaXMgbGltaXRzIHRoZSBudW1iZXIgb2YgZWRpdHMgaW4gbW9kaWZpZWQgRFRTZXMuCgpJ
dCdzIGFsc28gd29ydGggbm90aW5nIHRoYXQgSSBkaWQgbm90IHJldXNlIGFueSBvZiB0aGUgZXhp
c3RpbmcgYXI3MXh4IGNvZGUKKHdoaWNoIG1ha2VzIGludmFsaWQgYXNzdW1wdGlvbnMgYWJvdXQg
ZW5kaWFubmVzcywgYW1vbmcgb3RoZXIgcHJvYmxlbXMpLiBUaGlzCmlzIGEgd3JpdGUgZnJvbSBz
Y3JhdGNoLCBiYXNlZCBvbiBteSBvd24gYW5hbHlzaXMgb2Ygc2V2ZXJhbCBkdW1wcyBvZiBmbGFz
aApjb250ZW50cyBhY3Jvc3MgbXVsdGlwbGUgUm91dGVyQk9BUkQgcGxhdGZvcm1zLgoKVGhlIHBh
dGNoIHNlcmllcyBoYXMgYmVlbiBzdWNjZXNzZnVsbHkgdGVzdGVkIG9uIGJvdGggTEUgYW5kIEJF
IGhhcmR3YXJlLgoKSFRILApUaGliYXV0CgpUaGliYXV0IFZBUsOITkUgKDYpOgogIGdlbmVyaWM6
IHJvdXRlcmJvb3RwYXJ0IE1URCBwYXJzZXIgZm9yIFJvdXRlckJvb3QKICBnZW5lcmljOiByb3V0
ZXJib290IHBhcnRpdGlvbiBidWlsZCBiaXRzCiAgYXRoNzkvbWlrcm90aWs6IGVuYWJsZSBDT05G
SUdfTVREX1JPVVRFUkJPT1RfUEFSVFMKICBhdGg3OS9taWtyb3RpazogdXNlIHJvdXRlcmJvb3Rw
YXJ0IHBhcnRpdGlvbnMKICByYW1pcHMvbXQ3NjIxOiBlbmFibGUgQ09ORklHX01URF9ST1VURVJC
T09UX1BBUlRTCiAgcmFtaXBzOiBtaWtyb3RpazogdXNlIHJvdXRlcmJvb3RwYXJ0IHBhcnRpdGlv
bnMKCiAuLi5jYTk1NTZfbWlrcm90aWtfcm91dGVyYm9hcmQtd2FwLWctNWhhY3QyaG5kLmR0cyB8
ICAxOCArLQogLi4ucWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5k
dHMgfCAgMTcgKy0KIHRhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdCAg
ICAgICAgIHwgICAxICsKIHRhcmdldC9saW51eC9nZW5lcmljL2NvbmZpZy00LjE0ICAgICAgICAg
ICAgICAgICAgIHwgICAxICsKIHRhcmdldC9saW51eC9nZW5lcmljL2NvbmZpZy00LjE5ICAgICAg
ICAgICAgICAgICAgIHwgICAxICsKIHRhcmdldC9saW51eC9nZW5lcmljL2NvbmZpZy01LjQgICAg
ICAgICAgICAgICAgICAgIHwgICAxICsKIC4uLi9maWxlcy9kcml2ZXJzL210ZC9wYXJzZXJzL3Jv
dXRlcmJvb3RwYXJ0LmMgICAgIHwgMzU3ICsrKysrKysrKysrKysrKysrKysrKwogLi4uLzQzNS1t
dGQtYWRkLXJvdXRlcmJvb3RwYXJ0LXBhcnNlci1jb25maWcucGF0Y2ggfCAgNDMgKysrCiAuLi4v
NDM1LW10ZC1hZGQtcm91dGVyYm9vdHBhcnQtcGFyc2VyLWNvbmZpZy5wYXRjaCB8ICA0MSArKysK
IC4uLi80MzUtbXRkLWFkZC1yb3V0ZXJib290cGFydC1wYXJzZXItY29uZmlnLnBhdGNoIHwgIDM4
ICsrKwogLi4uL2R0cy9tdDc2MjFfbWlrcm90aWtfcm91dGVyYm9hcmQtNzUwZ3IzLmR0cyAgICAg
fCAgMTIgKy0KIC4uLi9kdHMvbXQ3NjIxX21pa3JvdGlrX3JvdXRlcmJvYXJkLW0xMWcuZHRzICAg
ICAgIHwgIDEyICstCiAuLi4vZHRzL210NzYyMV9taWtyb3Rpa19yb3V0ZXJib2FyZC1tMzNnLmR0
cyAgICAgICB8ICAxMiArLQogdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvY29uZmlnLTQuMTQg
ICAgICAgICAgICAgfCAgIDEgKwogdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvY29uZmlnLTUu
NCAgICAgICAgICAgICAgfCAgIDEgKwogMTUgZmlsZXMgY2hhbmdlZCwgNTA5IGluc2VydGlvbnMo
KyksIDQ3IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9nZW5l
cmljL2ZpbGVzL2RyaXZlcnMvbXRkL3BhcnNlcnMvcm91dGVyYm9vdHBhcnQuYwogY3JlYXRlIG1v
ZGUgMTAwNjQ0IHRhcmdldC9saW51eC9nZW5lcmljL3BlbmRpbmctNC4xNC80MzUtbXRkLWFkZC1y
b3V0ZXJib290cGFydC1wYXJzZXItY29uZmlnLnBhdGNoCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFy
Z2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE5LzQzNS1tdGQtYWRkLXJvdXRlcmJvb3RwYXJ0
LXBhcnNlci1jb25maWcucGF0Y2gKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvZ2Vu
ZXJpYy9wZW5kaW5nLTUuNC80MzUtbXRkLWFkZC1yb3V0ZXJib290cGFydC1wYXJzZXItY29uZmln
LnBhdGNoCgotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
