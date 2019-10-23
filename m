Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A57E2209
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 19:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JZ/zCd3nXDy4As6ZdObGhYcPvFIjxTNft8pCzTC3o5I=; b=QTKvHLMObqXZ9mIBqtcP0NQrX
	MjHFgFeUP2XSiKLNYzdXHspIGjympo7YkNfVbG6sT7gFLCL1x5bT8pyfYa4s6VXbXC4HmJteSg30g
	0yz3rDn4JsfJsom+sUPfVND5U/ZZXQQOS67qnQJU09ApfHspoEnfSK5N3xFVXLCdGyxz/tXqGQJcQ
	l8jdx6QIQfoV19w6iZzU9WLprsSss0KBmK0cFnt6PbDC4Y2GI9sueqGO/Pu72ZBRxWfKjpVGAnn6w
	Z7E/P2x7bul30/QPxNPTXA+TLTBk6QO+nVY421MI/jGv1VHsAK+UV3lN6LnsN4y1IjrddJl+22UDK
	S5ieXofxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKie-00019q-17; Wed, 23 Oct 2019 17:46:48 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKiX-00019X-Og
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 17:46:43 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 7CFE9594C6;
 Wed, 23 Oct 2019 10:46:10 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20191022194657.54433-1-freifunk@adrianschmutzler.de>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <c2051e71-d9f8-24cf-1981-e870e3775016@allycomm.com>
Date: Wed, 23 Oct 2019 10:46:10 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022194657.54433-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_104641_805280_1664A8F6 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: split base-files into subtargets
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTAvMjIvMTkgMTI6NDYgUE0sIEFkcmlhbiBTY2htdXR6bGVyIHdyb3RlOgoKPiBXaGlsZSBt
b3N0IG9mIHRoZSB0YXJnZXQncyBjb250ZW50cyBhcmUgc3BsaXQgaW50byBzdWJ0YXJnZXRzLCB0
aGUKPiBiYXNlLWZpbGVzIGFyZSBtYWludGFpbmVkIGZvciB0aGUgdGFyZ2V0IGFzIGEgd2hvbGUu
Cj4KPiBIb3dldmVyLCBPcGVuV3J0IGFscmVhZHkgaW1wbGVtZW50cyBhIG1lY2hhbmlzbSB0aGF0
IHdpbGwgdXNlIChhbmQKPiBldmVuIHByZWZlcikgZmlsZXMgaW4gdGhlIHN1YnRhcmdldHMnIGRp
cmVjdG9yaWVzLiBUaGlzIGNhbiBiZQo+IGV4cGxvaXRlZCB0byBtYWtlIHNldmVyYWwgc2NyaXB0
cyBzdWJ0YXJnZXQtc3BlY2lmaWMgYW5kIHRodXMgc2F2ZQo+IHNvbWUgc3BhY2UgKGVzcGVjaWFs
bHkgaGVscGZ1bCBmb3IgdGhlIHRpbnkgZGV2aWNlcykuCj4KPiBUaGUgb25seSBzY3JpcHQgcmVt
YWluaW5nIGluIHBhcmVudCBiYXNlLWZpbGVzIGlzCj4gL2V0Yy9ob3RwbHVnLmQvaWVlZTgwMjEx
LzAwLXdpZmktbWlncmF0aW9uLCBldmVyeXRoaW5nIGVsc2UgaXMKPiBtb3ZlZC9zcGxpdC4KPgo+
IE5vdGUgdGhhdCB0aGlzIHdpbGwgaW5jcmVhc2Ugb3ZlcmFsbCBjb2RlIGxpbmVzLCBidXQgcmVk
dWNlIGNvZGUKPiBwZXIgc3VidGFyZ2V0Lgo+Cj4gYmFzZS1maWxlcyBpcGsgc2l6ZSByZWR1Y3Rp
b246Cj4gbWFzdGVyIChnZW5lcmljKSAgIDQ5MTM1IEIKPiBzcGxpdCAoZ2VuZXJpYykgICAgNDg1
MzMgQiAoLSAwLjYga2lCKQo+IHNwbGl0ICh0aW55KSAgICAgICA0MzMzNyBCICgtIDUuNyBraUIp
Cj4gc3BsaXQgKG5hbmQpICAgICAgIDQ0NDIzIEIgKC0gNC42IGtpQikKPgo+IFRlc3RlZCBvbiBU
TC1XUjEwNDNORCB2NCAoZ2VuZXJpYykgYW5kIFRMLVdSODQxTiB2MTIgKHRpbnkpLgo+Cj4gU2ln
bmVkLW9mZi1ieTogQWRyaWFuIFNjaG11dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIu
ZGU+Cj4KPiAtLS0KPgoKSGF2aW5nIGxvb2tlZCBpbnRvIHRoaXMgaW4gZGV0YWlsIGR1cmluZyBt
eSB3b3JrIHRvIGltcGxlbWVudCBTUEktTkFORApzdXBwb3J0IGZvciB0aGUgYXRoNzkgdGFyZ2V0
WzFdLCBJIGNvbnRpbnVlIHRvIHN0cm9uZ2x5IHN1cHBvcnQgdGhpcwphcHByb2FjaC4KCkluIG15
IG9waW5pb24sIGl0IHByb3ZpZGUgc2V2ZXJhbCwgc2lnbmlmaWNhbnQgYmVuZWZpdHMsIGluY2x1
ZGluZzoKCiogU21hbGxlciBmaWxlIHN5c3RlbXMsIGFscmVhZHkgY3JpdGljYWwgZm9yICJ0aW55
IiBkZXZpY2VzCiogIkJvaWxlcnBsYXRlIiBjb2RlIG1haW50YWluZWQgaW4gb25lIHBsYWNlCiog
RWFzaWVyIG1lcmdlL3JlYmFzZSB3aGVuIGRldmljZXMgYXJlIGFkZGVkLCByZW5hbWVkLCBvciBy
ZW1vdmVkCiogQ29uc2lzdGVuY3kgb2YgY29kZSBvcmdhbml6YXRpb24gd2hlbiBzdWJ0YXJnZXRz
IGFyZSBpbnZvbHZlZAogwqAgKiBDb2RlIGNoYW5nZXMnIGltcGFjdCByZXN0cmljdGVkIHRvIG9u
bHkgaW50ZW5kZWQgZGV2aWNlcwogwqAgKiBJbXByb3ZlZCBhY2Nlc3MgdG8gY29kZSBoaXN0b3J5
IGZvciBhIHRhcmdldCBhbmQgc3VidGFyZ2V0CgpOb3RlIHRoYXQgZXZlbiBhIGZldyBrQiBvZiBp
bmNyZWFzZWQgZmlsZSBzaXplIGNhbiBpbmNyZWFzZSB0aGUgc2l6ZQpvZiB0aGUgZmlsZSBzeXN0
ZW0gYnkgYSBmdWxsIEpGRlMgZXJhc2UgYmxvY2ssIHB1c2hpbmcgYSBkZXZpY2UgZnJvbQoic3Vw
cG9ydGVkIiB0byBub3Qgc3VwcG9ydGFibGUuCgoKSmVmZiBLbGV0c2t5CgoKCgpbMV0gaHR0cHM6
Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzIxODQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
