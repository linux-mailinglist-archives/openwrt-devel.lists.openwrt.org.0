Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C73877C5C
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 01:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WdDks5UerCucn4TuoY4MRJxCqI39QfST6Qp/+qtoWbY=; b=sJHS8CiApohflPyTrdo/1MFjZ
	4hi07EqsaTotsDPGLOrzursGVXskouhoRbWEK0FsGn3GVAEQwtV+U7jqNRkNEgttbK3NVFbBNeuIF
	TeXzYLGC5weWme65ZRQkXfGVsD2Li6rFCCnCnFoyXDt8VBYFBPcfcRaEmPFxcbftV3HOcyxfX72TF
	2iQh7y034OMDTwpxqLdHZ5d18DvZRQy3aZYwhKaCvJ9uaKV8u9q/jYb5WvqAetfo1L7hf9nizKK1y
	HQ5dKmzFnlJmppRqU10Xf1xOwl302rw5trw9Pz+8bYlKVHBFcPQt0PvGy2xYiCrDqlQZHYNxqZSEn
	pAaG8bXMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrVrr-0000go-10; Sat, 27 Jul 2019 23:12:47 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrVrf-0000gP-1E
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 23:12:36 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 7AB743A1A1;
 Sat, 27 Jul 2019 16:12:27 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
 <20190727225308.GD74752@meh.true.cz>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <06952a91-cb03-3818-33ef-449ccad8a95e@allycomm.com>
Date: Sat, 27 Jul 2019 16:12:12 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190727225308.GD74752@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_161235_077645_81F9DF01 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Compilation error switch to pyhon 3
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDcvMjcvMTkgMzo1MyBQTSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBBbnN1ZWwgU21pdGgg
PGFuc3VlbHNtdGhAZ21haWwuY29tPiBbMjAxOS0wNy0yNyAxOTo0NjozNV06Cj4KPiBIaSwKPgo+
PiBJIGNhbid0IGN1cnJlbnRseSBjb21waWxlIG15IGltYWdlIGFuZCBpIGhhdmUgdGhpcyBlcnJv
cgo+Pgo+PiBtYWtlWzNdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvYW5zdWVsL29wZW53cnQv
dG9vbHMvbGlidG9vbCcKPj4gdGltZTogdG9vbHMvbGlidG9vbC9jb21waWxlIzAuMDUjMC4wMCMw
LjEwCj4+IFRyYWNlYmFjayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToKPj4gICAgRmlsZSAiL2hv
bWUvYW5zdWVsL29wZW53cnQvYnVpbGRfZGlyL2hvc3Qvc2NvbnMtMy4wLjUvc2V0dXAucHkiLAo+
PiBsaW5lIDI2LCBpbiA8bW9kdWxlPgo+PiAgICAgIGltcG9ydCBkaXN0dXRpbHMuY29tbWFuZC5i
dWlsZF9zY3JpcHRzCj4+IE1vZHVsZU5vdEZvdW5kRXJyb3I6IE5vIG1vZHVsZSBuYW1lZCAnZGlz
dHV0aWxzLmNvbW1hbmQnCj4geWVwLCBJJ3ZlIHNlZW4gdGhhdCBhbHJlYWR5WzFdLCBvdXQgb2Yg
Y3VyaW9zaXR5LCB3aGF0IGRpc3RybyBpcyB0aGF0PyBJCj4gdGhpbmssIHRoYXQgc2NvbnMgaGFz
IG5vIHBsYWNlIGluIHRoZSBtYXN0ZXIgdHJlZSBhcyBubyBwYWNrYWdlIGluIHRoZSBtYXN0ZXIK
PiB0cmVlIGRlcGVuZHMgb24gaXQsIHNvIEkndmUgc3RhcnRlZCBtb3ZlIHByb2Nlc3MgaW50byBw
YWNrYWdlcyBmZWVkWzJdLgo+Cj4gMS4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3Blbndy
dC9jb21taXQvMzE2YzhiNTUwM2U1NGNkYjNlZTViZDNiNWQ4MWEzYjdkZDEzOTI5NCNjb21taXRj
b21tZW50LTM0NDYwODc1Cj4gMi4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvcGFja2FnZXMv
cHVsbC85NTg0Cj4KPiAtLSB5bmV6ego+CkZyZXNoIGluc3RhbGwgb2YgRGViaWFuIDEwICgiQnVz
dGVyIikgb24gQU1ENjQgYWZ0ZXIgbXkgdXN1YWwKCmFwdCBpbnN0YWxsIGJ1aWxkLWVzc2VudGlh
bCBnaXQgZ2l0ayBsaWJuY3Vyc2VzNS1kZXYgZ2F3ayB1bnppcCB3Z2V0IApjdXJsIGNjYWNoZSBy
c3luYyB6bGliMWctZGV2CgoKSmVmZgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
