Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF01412C61
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 13:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jm27923wMgimhjTkZwwd1WiNskmVOq3yjxNPAt2lL34=; b=kCkglKXRdbxM0pHERegw9jyZ7
	IaMSKyRHiv2TxEUAZAU7ZNXMNmTE4M9TynOP8ton3LYVpxGcrMQqfjVBp5Bwrj3rYJ5RvylX/WEZE
	mmxVfkcUNFbV32hFNlhdkNhX6GSL1S2BKEgw+qVbQ7bK7IDtaYSDEd56uLMrVtBaEDMbfwgikwhGd
	rHVwZCf2pjtlOOcSaDNsCA631/bUEiNSFKnzyWd8PfU7Err/6KFQJ/TOhRAbrfL5bUWn74efHJIJl
	IQb+fbafyhJbkDOtbCDzZuhLEi07pR+Zz84ZK7rrAo1zsrXZwxb2q3+UuKlP/LP8tCY17BKwkQ2i8
	3BZ8nEtIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWMW-0001IJ-Ns; Fri, 03 May 2019 11:28:20 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWMK-0001Cv-El
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 11:28:13 +0000
Received: from JKLETSKY-MBP15.local (unknown [213.86.87.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 51D5539690;
 Fri,  3 May 2019 04:27:36 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <8657fdac-f013-7025-e5f1-634665246af8@wagsky.com>
 <20190503101917.GH346@meh.true.cz>
 <62b2ed25-699b-7127-2de9-f6194c43704e@allycomm.com>
 <20190503112008.GJ346@meh.true.cz>
From: Jeff Kletsky <jmk@wagsky.com>
Message-ID: <786c62bb-e1a2-4bd1-2fd8-1f731622a936@wagsky.com>
Date: Fri, 3 May 2019 12:27:34 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503112008.GJ346@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_042808_780467_7BE1C4F6 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: glinet_gl-ar750s: Use QCA9887
 firmware
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

T24gNS8zLzE5IDEyOjIwIFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgoKPiBKZWZmIEtsZXRza3kg
PGxlZGVAYWxseWNvbW0uY29tPiBbMjAxOS0wNS0wMyAxMjoxMTo0OF06Cj4KPj4gVGhhdCdzIHN0
cmFuZ2UgLS0gcGVyaGFwcyBhbm90aGVyIHBhdGNoIHVwZGF0ZWQgaXQ/Cj4gbm8sIGlmIHlvdSBs
b29rIGF0IHRoZSBwYXRjaHdvcmssIHRoZSBwYXRjaCB3YXMgc2ltcGx5IHNlbnQgb3V0IGJyb2tl
bi4KPgo+IC0tIHluZXp6CgpNeSBhcG9sb2dpZXMsIHJlc2VuZCBkdWUgdG8gYnJva2VuIHBhdGNo
CgooT25seSBhcHBsaWVzIHRvIGFuZCBpbXBhY3RzIGBtYXN0ZXJgIGFzIG9uIGF0aDc5IHRhcmdl
dCkKCiBGcm9tIGM1NTNhM2JlY2VmOGM3NzRjN2Y3MjVjZjg0MDM1NzczYjg2OGI4MDkgTW9uIFNl
cCAxNyAwMDowMDowMCAyMDAxCkZyb206IEplZmYgS2xldHNreSA8Z2l0LWNvbW1pdHNAYWxseWNv
bW0uY29tPgpEYXRlOiBTdW4sIDI3IEphbiAyMDE5IDIwOjE3OjE2IC0wODAwClN1YmplY3Q6IFtQ
QVRDSF0gYXRoNzk6IGdsaW5ldF9nbC1hcjc1MHM6IFVzZSBRQ0E5ODg3IGZpcm13YXJlCgpUaGUg
R0wuaU5ldCBBUjc1MFMgaXMgYmFzZWQgYXJvdW5kIHRoZSBRQ0E5NTYzCmFuZCByZXF1aXJlcyB0
aGUgUUNBOTg4NyBmaXJtd2FyZSBmb3Igb3BlcmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogSmVmZiBL
bGV0c2t5IDxnaXQtY29tbWl0c0BhbGx5Y29tbS5jb20+Ci0tLQogIHRhcmdldC9saW51eC9hdGg3
OS9pbWFnZS9nZW5lcmljLm1rIHwgMiArLQogIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9n
ZW5lcmljLm1rIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMubWsKaW5kZXggODU4
OGU3Y2RmNi4uOGUxNjJlMWQwZSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdl
L2dlbmVyaWMubWsKKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMubWsKQEAg
LTM2Myw3ICszNjMsNyBAQCBUQVJHRVRfREVWSUNFUyArPSBnbGluZXRfZ2wtYXIzMDBtLW5vcgog
IGRlZmluZSBEZXZpY2UvZ2xpbmV0X2dsLWFyNzUwcwogICAgQVRIX1NPQyA6PSBxY2E5NTYzCiAg
ICBERVZJQ0VfVElUTEUgOj0gR0wuaU5ldCBHTC1BUjc1MFMKLSAgREVWSUNFX1BBQ0tBR0VTIDo9
IGttb2QtdXNiMiBrbW9kLWF0aDEway1jdCBhdGgxMGstZmlybXdhcmUtcWNhOTg4eC1jdAorICBE
RVZJQ0VfUEFDS0FHRVMgOj0ga21vZC11c2IyIGttb2QtYXRoMTBrLWN0IGF0aDEway1maXJtd2Fy
ZS1xY2E5ODg3LWN0CiAgICBJTUFHRV9TSVpFIDo9IDE2MDAwawogICAgU1VQUE9SVEVEX0RFVklD
RVMgKz0gZ2wtYXI3NTBzCiAgZW5kZWYKLS0gCjIuMTEuMAoKCgouCiAgCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
