Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D61B737B7
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 21:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CHnWCzBuKGPi/leAzM7N9FrJT+e8Ieo9tuPlsiJpdcY=; b=hTqZ4d76F9EioVOqi/2xymxlP
	9WHMRUo4LZnlBPYwrcOWzP0dH/iLWn54fIcVYN8V7cUEIkviCuo99b15zptocWwXZhIMKtiJo+SG7
	jrL+f5ycW5Es2aLlH0HegkhI1QNVJ6locEQ4I5+JBFUwZug7WsQKl2bFNnlEig3iuPZ4hYAVp2oaF
	iwKovix/l14Ep6WypDX8CF7hCa56TxdDvkCxdKJNiiinvNXXXDwvD7dFPNtJ0//A8VD4zS5jGSwpN
	zI/VFB7pdFDwBOtkaH0tS45KEg9d8McpryiMftTq7STkcb1anpsODa7mglYxrBsovGrw+Pmt0L8kN
	3cdc542IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMn1-0000uD-Qj; Wed, 24 Jul 2019 19:19:03 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMmt-0000t2-Gt
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 19:18:56 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 6C39A385D6;
 Wed, 24 Jul 2019 12:18:53 -0700 (PDT)
To: Rosen Penev <rosenp@gmail.com>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
References: <20190724133351.2283-1-freifunk@adrianschmutzler.de>
 <CAKxU2N8HPCaEb1WahtbfbVGnJ-XOcjWa5_2GU2Bn=3QV9fhBKA@mail.gmail.com>
 <011b01d54248$0f176e50$2d464af0$@adrianschmutzler.de>
 <CAKxU2N8AWz9UHk48pY0vBUbqOFBK9bZF+najpJiXFVYLA225Rg@mail.gmail.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <557a9ff0-c0de-9c25-d830-c1e834f4c530@allycomm.com>
Date: Wed, 24 Jul 2019 12:18:53 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKxU2N8AWz9UHk48pY0vBUbqOFBK9bZF+najpJiXFVYLA225Rg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_121855_566934_88875D7B 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Replace backticks by $(...)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDcvMjQvMTkgMTE6MDUgQU0sIFJvc2VuIFBlbmV2IHdyb3RlOgo+IE9uIFdlZCwgSnVsIDI0
LCAyMDE5IGF0IDEwOjQ4IEFNIEFkcmlhbiBTY2htdXR6bGVyCj4gPG1haWxAYWRyaWFuc2NobXV0
emxlci5kZT4gd3JvdGU6Cj4+IEhpLAo+Pgo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0K
Pj4+IEZyb206IFJvc2VuIFBlbmV2IFttYWlsdG86cm9zZW5wQGdtYWlsLmNvbV0KPj4+IFNlbnQ6
IE1pdHR3b2NoLCAyNC4gSnVsaSAyMDE5IDE4OjU0Cj4+PiBUbzogQWRyaWFuIFNjaG11dHpsZXIg
PGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+Cj4+PiBDYzogT3BlbldydCBEZXZlbG9wbWVu
dCBMaXN0IDxvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnPgo+Pj4gU3ViamVjdDogUmU6
IFtPcGVuV3J0LURldmVsXSBbUEFUQ0hdIG12ZWJ1OiBSZXBsYWNlIGJhY2t0aWNrcyBieSAkKC4u
LikKPj4+Cj4+PiBPbiBXZWQsIEp1bCAyNCwgMjAxOSBhdCA2OjM0IEFNIEFkcmlhbiBTY2htdXR6
bGVyCj4+PiA8ZnJlaWZ1bmtAYWRyaWFuc2NobXV0emxlci5kZT4gd3JvdGU6Cj4+Pj4gU2lnbmVk
LW9mZi1ieTogQWRyaWFuIFNjaG11dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+
Cj4+Pj4gLS0tCj4+Pj4gICB0YXJnZXQvbGludXgvbXZlYnUvYmFzZS1maWxlcy9saWIvdXBncmFk
ZS9saW5rc3lzLnNoIHwgMiArLQo+Pj4+ICAgdGFyZ2V0L2xpbnV4L212ZWJ1L2Jhc2UtZmlsZXMv
c2Jpbi9mYW5fY3RybC5zaCAgICAgICB8IDYgKysrLS0tCj4+Pj4gICAyIGZpbGVzIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS90
YXJnZXQvbGludXgvbXZlYnUvYmFzZS1maWxlcy9saWIvdXBncmFkZS9saW5rc3lzLnNoCj4+PiBi
L3RhcmdldC9saW51eC9tdmVidS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL2xpbmtzeXMuc2gKPj4+
PiBpbmRleCAzZjQ1ZDZjYWM1Li5kZGYyNDgzNmJjIDEwMDY0NAo+Pj4+IC0tLSBhL3RhcmdldC9s
aW51eC9tdmVidS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL2xpbmtzeXMuc2gKPj4+PiArKysgYi90
YXJnZXQvbGludXgvbXZlYnUvYmFzZS1maWxlcy9saWIvdXBncmFkZS9saW5rc3lzLnNoCj4+Pj4g
QEAgLTYsNyArNiw3IEBAIGxpbmtzeXNfZ2V0X3RhcmdldF9maXJtd2FyZSgpIHsKPj4+Pgo+Pj4+
ICAgICAgICAgIGxvY2FsIGN1cl9ib290X3BhcnQgbXRkX3ViaTAKPj4+Pgo+Pj4+IC0gICAgICAg
Y3VyX2Jvb3RfcGFydD1gL3Vzci9zYmluL2Z3X3ByaW50ZW52IC1uIGJvb3RfcGFydGAKPj4+PiAr
ICAgICAgIGN1cl9ib290X3BhcnQ9JCgvdXNyL3NiaW4vZndfcHJpbnRlbnYgLW4gYm9vdF9wYXJ0
KQo+Pj4+ICAgICAgICAgIGlmIFsgLXogIiR7Y3VyX2Jvb3RfcGFydH0iIF0gOyB0aGVuCj4+Pj4g
ICAgICAgICAgICAgICAgICBtdGRfdWJpMD0kKGNhdCAvc3lzL2RldmljZXMvdmlydHVhbC91Ymkv
dWJpMC9tdGRfbnVtKQo+Pj4+ICAgICAgICAgICAgICAgICAgY2FzZSAkKGVncmVwIF5tdGQke210
ZF91YmkwfTogL3Byb2MvbXRkIHwgY3V0IC1kICciJyAtZiAyKSBpbgo+Pj4gZWdyZXAgaXMgZGVw
cmVjYXRlZCBhcyB3ZWxsLiBJJ20gYXNzdW1pbmcgeW91J3JlIHJ1bm5pbmcgdGhlc2UgdGhyb3Vn
aAo+Pj4gc2hlbGxjaGVjay4KPj4gSSBpbmRlZWQgZ290IHRoaXMgaGludCBmcm9tIHNoZWxsY2hl
Y2ssIHN1Z2dlc3RpbmcgImdyZXAgLUUiIGFzIHJlcGxhY2VtZW50Lgo+PiBIb3dldmVyLCBJJ20g
bm90IGZhbWlsaWFyIHdpdGggdGhlIG9sZCBlZ3JlcC4KPj4gU28sIEkgd2FzIG5vdCBzdXJlIHdo
ZXRoZXIgSSByZWFsbHkgY2FuIHJlcGxhY2UgaXQgd2l0aG91dCBzaWRlLWVmZmVjdHMsIGFuZCBz
aW5jZSBJIGNhbm5vdCB0ZXN0IG9uIHRoaXMgdGFyZ2V0LCBJIGRlY2lkZWQgYWdhaW5zdCBjaGFu
Z2luZyB0aGF0Lgo+Pgo+PiBJZiB5b3UgdGVsbCBtZSBpdCdzIG9rYXksIEkgY2FuIGluY2x1ZGUg
aXQgaW4gYSB2Mi4KPiBlZ3JlcCBpcyBlcXVpdmFsZW50IHRvIGdyZXAgLUUuIEkgaGF2ZSBuZXZl
ciBzZWVuIGFueSBmYWxsb3V0IGZyb20KPiBjaGFuZ2luZyB0aGlzLgoKWy4uLl0KClRoZSBvbmUg
cGxhY2UgdGhhdCBJIGtub3cgaXQgaXMgY3JpdGljYWwgdG8gdXNlIGBncmVwIC1FYCBvdmVyIGBl
Z3JlcGAgCmlzIGR1cmluZyBzdGFnZTIgb2Ygc3lzdXBncmFkZSwgd2hlbiBgZ3JlcGAgaXMgdHlw
aWNhbGx5IGF2YWlsYWJsZSBhbmQgCmBlZ3JlcGAgaXMgb2Z0ZW4gbm90LgoKc3dpdGNoX3RvX3Jh
bWZzKCkgewogwqDCoMKgwqDCoMKgwqAgZm9yIGJpbmFyeSBpbiBcCiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgL2Jpbi9idXN5Ym94IC9iaW4vYXNoIC9iaW4vc2ggL2Jpbi9tb3VudCAv
YmluL3Vtb3VudMKgwqDCoCBcCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGl2b3Rf
cm9vdCBtb3VudF9yb290IHJlYm9vdCBzeW5jIGtpbGwgc2xlZXDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIFwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtZDVzdW0gaGV4ZHVtcCBjYXQg
emNhdCBiemNhdCBkZCB0YXLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBc
CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbHMgYmFzZW5hbWUgZmluZCBjcCBtdiBy
bSBta2RpciBybWRpciBta25vZCB0b3VjaCBjaG1vZCBcCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgJ1snIHByaW50ZiB3YyBncmVwIGF3ayBzZWQgY3V0wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXAogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIG10ZCBwYXJ0eCBsb3NldHVwIG1rZnMuZXh0NMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB1Yml1cGRhdGV2b2wgdWJpYXR0YWNoIHViaWJsb2NrIHViaWZvcm1hdMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXAogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHViaWRldGFjaCB1Ymlyc3ZvbCB1YmlybXZvbCB1Ymlta3ZvbMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
bmFwc2hvdCBzbmFwc2hvdF90b29swqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAkUkFNRlNfQ09QWV9CSU4KWy4uLl0KCgpBcyBJJ3ZlIGhhZCBteSBoYW5kcyBpbiBg
bGlua3N5cy5zaGAgcmVjZW50bHkgKGNvbW1pdCBiMzc3MGVhY2EzKSwgSSBjYW4gCnNheSB0aGF0
IHRoZSBwcmltYXJ5IHJlYXNvbiBJIGRpZG4ndCBjaGFuZ2UgaXQgaW4gdGhhdCBmaWxlIHRoZW4g
d2FzIHRvIAprZWVwIHRoZSBsYXJnZSBudW1iZXIgb2YgY2hhbmdlcyBzb21ld2hhdCBtb3JlIHVu
ZGVyc3RhbmRhYmxlLgoKCkplZmYKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
