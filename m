Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859C612B38E
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 10:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uq0o53ORaarPiQ6MCLtaEj+uhJ7ys8B1coFwpOnBkMA=; b=hqShzioRkv0omXdvyCbIfq/Eq
	feN06cbFYzPNr+6tVpM5yy3rqaLVi0hZkyL2D0diswHXfYJygDeJfBQocf0Tkv3yHFjQxN9TReZ0A
	wPtVTXevDhCIQUazrwktGknAz8tdWx87x/5VUZqb9/r5j03ZiCnbAAuiu3f2Go8KNAuVjzTU1yoLA
	/ehQJEroOQIvMyR502nv39/Vc2aeCIvLpBSLgsWZ+MmYBtqTOsjclpvEJY/1AWa90TBignMKZ1siC
	bh6vYNO0Xm9+VS6sIwl1OB2V5vuLh4rBlZ1aXEUwHg2tBoWwoMk7qJh8v4MnQtt3X0AsyNfUme6aL
	NvpFxFgtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikm0S-0006rg-9g; Fri, 27 Dec 2019 09:34:04 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikm0H-0006rK-Cf
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 09:33:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 2102F20838;
 Fri, 27 Dec 2019 11:33:49 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp2.welho.com ([IPv6:::ffff:83.102.41.85])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id D8owi9QjKirk; Fri, 27 Dec 2019 11:33:47 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp2.welho.com (Postfix) with ESMTPS id 9867172;
 Fri, 27 Dec 2019 11:33:45 +0200 (EET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <6cb3b640-8590-d083-e5c2-63df74c7e86b@welho.com>
 <20191226225936.GB70184@meh.true.cz>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <fa84e9a6-5b08-c680-b3ed-0ad1b3f00359@iki.fi>
Date: Fri, 27 Dec 2019 11:33:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0
MIME-Version: 1.0
In-Reply-To: <20191226225936.GB70184@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_013353_596290_09B0F0FE 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] ubus and/or libubox upgrades today cause
 problems: some services do not start, logread hangs
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciBraXJqb2l0dGkgMjcuMTIuMjAxOSBrbG8gMC41OToKPiBIYW5udSBOeW1h
biA8aGFubnUubnltYW5Ad2VsaG8uY29tPiBbMjAxOS0xMi0yNiAyMjozNzozMV06Cj4KPiBIaSwK
Pgo+PiBJIG5vdGljZWQgdG9kYXkgcHJvYmxlbXMgd2l0aCBuZXcgbWFzdGVyIGJ1aWxkcywgYm90
aCB3aXRoIGlwcTgwNngvUjc4MDAgYW5kCj4+IGFyNzF4eC9XTkRSMzcwMDoKPj4KPj4gKiBTb21l
IHNlcnZpY2VzIGRvIG5vdCBzdGFydCBhbmQgdGhlaXIgcHJvY2Vzc2VzIGFyZSBub3QgdmlzaWJs
ZSBpbiB0aGUKPj4gcHJvY2VzcyBsaXN0LiBFeGFtcGxlczogY29sbGVjdGQgYW5kIG5sYndtb24K
Pj4gKiBsb2dyZWFkIGNvbW1hbmQgYWx3YXlzIGhhbmdzLiBCb3RoIGZyb20gU1NIIGNvbnNvbGUg
YW5kIGx1Y2kKPiBzb3JyeSBmb3IgdGhlIGJyZWFrYWdlLgo+Cj4+IEkgcmV2ZXJ0ZWQgYm90aCB1
YnVzIGFuZCBsaWJ1Ym94IGNoYW5nZXMgYW5kIHRoZSBzZXJ2aWNlcyBzdGFydCBhZ2Fpbgo+PiAo
bmxid21vbiwgY29sbGVjdGQpLCBhbmQgYWxzbyBsb2dyZWFkIHdvcmtzIDstKQo+IEkndmUganVz
dCBsb29rZWQgYXQgdGhlIGxvZ3JlYWQgaXNzdWUgYW5kIEkndmUgdHJhY2tlZCBpdCBkb3duIHRv
IHRoZSBmb2xsb3dpbmcKPiBjb21taXRbMV06Cj4KPiAgIGNvbW1pdCA1ZDdjYTgzMDlkMGExNjE0
ZDgyOWRmOWVjZDcyNTUzYmNkNmI1ZWM2Cj4gICBBdXRob3I6ICAgICBQZXRyIMWgdGV0aWFyIDx5
bmV6ekB0cnVlLmN6Pgo+Cj4gICAgICB1YnVzZC9saWJ1YnVzLWlvOiBmaXggdmFyaWFibGUgc2l6
ZWQgc3RydWN0IHBvc2l0aW9uIHdhcm5pbmcKPiAgICAgIAo+ICAgICAgRml4ZXMgZm9sbG93aW5n
IGNsYW5nLTkgY29tcGlsZXIgd2FybmluZ3M6Cj4gICAgICAKPiAgICAgICB1YnVzZC5jOjk5OjE4
OiBlcnJvcjogZmllbGQgJ2gnIHdpdGggdmFyaWFibGUgc2l6ZWQgdHlwZSAnc3RydWN0IGNtc2do
ZHInIG5vdCBhdCB0aGUgZW5kIG9mIGEgc3RydWN0IG9yIGNsYXNzIGlzIGEgR05VIGV4dGVuc2lv
biBbLVdlcnJvciwtV2dudS12YXJpYWJsZS1zaXplZC10eXBlLW5vdC1hdC1lbmRdCj4gICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IGNtc2doZHIgaDsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBeCj4KPiBJJ2xsIHRyeSB0byBmaXggdGhhdCB0b21vcnJvdy4KCgpIb3Bl
ZnVsbHkgeW91L3NvbWVib2R5IHdpbGwgcmV2ZXJ0IHRoZSB1YnVzIGNoYW5nZXMgaW4gbWFzdGVy
IHVudGlsIHRoZW4uCgp1YnVzIGlzIHNvIGNlbnRyYWwgdG8gT3BlbldydCB0aGF0IHNpbGVudCBi
cmVha2FnZSBpbiBpdHMgY29yZSBmdW5jdGlvbmFsaXR5IAp3aWxsIGNhdXNlIGxvdHMgb2Ygc25l
YWtpbHkgYnJva2VuIGJ1aWxkcy4KCgo+Cj4gMS4gaHR0cHM6Ly9naXQub3BlbndydC5vcmcvNWQ3
Y2E4MzA5ZDBhMTYxNGQ4MjlkZjllY2Q3MjU1M2JjZDZiNWVjNgo+Cj4gLS0geW5lenoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
