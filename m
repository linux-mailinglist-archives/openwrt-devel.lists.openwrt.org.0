Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FA7716AA
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 12:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ieFTRqBCHVk8ih2+M/dc0I+uIBmJX2Ye48YnXKZ7Kw=; b=ZpDGU/u3O5fCKQ
	2iMb64/ieByTtc4Xd/9SNLTnX21lgH74SvFMfB1vYjxqPrb5hLwnF4HBjH0aoyEq6j9t0MSjISa+z
	OLGOlPBaWvXmjAYSxZN8xsU05FC4PwW1zL3FpqP+xc0a6xRsVNY2Ncot4M7YFQXTnzif+t7rLFEZf
	R9cYdWGi72OUoO+Pi+gbYfKL8V0U8t+FugePYWwPDieq6Uf2gMZO1yp2Wl9QFELO2X+seDY7ZBp5P
	acIYrZIf4sDkiAaJMyYOPhOvn3vJLBy7oIfX3S1/HJ+JEw9uGkIw6vN0mWsFal4FK36/6Sbq+w0bI
	sKPaqItpU9PfoDYnLbXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsUf-00067C-Bm; Tue, 23 Jul 2019 10:58:05 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsUN-00066O-5C
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 10:57:48 +0000
Received: by mail-lf1-x141.google.com with SMTP id z15so24739692lfh.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 23 Jul 2019 03:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XUFOs2wqn2KAEX8EbqZwBs1Z7uuxV0Nch0R2nhBDJe0=;
 b=B9oxRgB05lLp/6tExnR/8WhArcP822Auxu5BIjDKHm2Nz3Rc714Mp4CisUZ/yIhcfb
 hPN4P7cuDFwYTvzHq3yHQ29woGmfmLwnWvHCa1SES8jKNvgBnMFiuzVW0okOPM4MyQJ9
 z5zIwhmZxE2C39Z18lnNDA3F2+OjCUYttK+YgTfmCfPHCFM3z5uYRncTPO4LSORhinsF
 PXYxphuKSKKFsdXDiP9Yv7R7Wp+8yaMaRjdVcm5yxqEn9gfxCdPcgkKRwhiI8tTBvlU1
 +MKB+sk4esUhU+sWjknIxmzlvQFz1jEHuG5dINYXyJb/6BQ3K1vLpcZXet8CEePbcdam
 b1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XUFOs2wqn2KAEX8EbqZwBs1Z7uuxV0Nch0R2nhBDJe0=;
 b=Rchd2eRsmS7lYGtYV4/OL7E2nFz8nJYtuj0QiDaeG3zfivkWB8Vj1/yLlC6fhgyoPK
 ifi8vscBwLGHkmfSjssu6gKLkI6WIRjfieFjh/bz1wewtzSaJzy9GSOg2hM64AfG10qe
 4uhg00fSeLeGomWFLH6jmQQH2Mj8NSWPkkETayIgsqf3/ovzWVqcUETVOmWri46tE3hY
 0RCsLNMz1Ym/xkDkZKJpFmjl/vGK4EkwFjulvPHccWnuP3YAHLNKyuWl3O2jmB/y3y04
 zUSOzL9w76aWpU5P0IawEbUeos+6xxWp0156A5CROq6Ur3U1qWxoooRSaTX1JcmftXwb
 CaPw==
X-Gm-Message-State: APjAAAUyRR3dbokhJJQsinYvyRdrE+VohnGuAerg06Dorm9Hr4MShvQ5
 nuNmO20jWT/sLgrgox1pHJrylm3dv1eSnVYQjA+s8jQh
X-Google-Smtp-Source: APXvYqwf1zJyA1J86vpbg33bbznii1WMxw5pHsA9uYoBaMuvQVXy8BkL65nNY/HIHh8/22BR/WPuysHpYrTIvOqQDH4=
X-Received: by 2002:ac2:528e:: with SMTP id q14mr32630970lfm.17.1563879464401; 
 Tue, 23 Jul 2019 03:57:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190723102252.30420-1-ynezz@true.cz>
In-Reply-To: <20190723102252.30420-1-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 23 Jul 2019 18:57:32 +0800
Message-ID: <CAECwjAhGgJ7Tdkv=cusD4CV3UoGi+5P80AZ0f-fuaKyoQaUDSA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_035747_226523_1F972F42 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] build: rules.mk: allow overriding of
 HOSTCC and HOSTCXX
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCAyMyBKdWwgMjAxOSBhdCAxODoyMywgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBDdXJyZW50bHkgaXQncyBub3QgcG9zc2libGUgdG8gY2hhbmdlIHRoZSBo
b3N0IGNvbXBpbGVyIHZlcnNpb24gZHVyaW5nCj4gZGV2bG9wbWVudC90ZXN0L2ZpeGluZyBhbmQg
b25lIGhhcyB0byBhbHdheXMgaGFuZCBlZGl0IHJ1bGVzLm1rIHdoaWNoIGlzCj4gdGlyZXNvbWUs
IHNvIGxldCdzIGFsbG93IGNoYW5naW5nIG9mIHRob3NlIHZhcmlhYmxlcyBmcm9tIG1ha2UvZW52
IHZhcnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+
IC0tLQo+ICBydWxlcy5tayB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3J1bGVzLm1rIGIvcnVsZXMubWsK
PiBpbmRleCA4MGNiM2Q2M2Y0NDkuLmRjOGExYmFjOGQ4MyAxMDA2NDQKPiAtLS0gYS9ydWxlcy5t
awo+ICsrKyBiL3J1bGVzLm1rCj4gQEAgLTI0NSw4ICsyNDUsOCBAQCBQS0dfQ09ORklHOj0kKFNU
QUdJTkdfRElSX0hPU1QpL2Jpbi9wa2ctY29uZmlnCj4KPiAgZXhwb3J0IFBLR19DT05GSUcKPgo+
IC1IT1NUQ0M6PWdjYwo+IC1IT1NUQ1hYOj1nKysKPiArSE9TVENDPz1nY2MKPiArSE9TVENYWD89
ZysrCgpWYXJpYWJsZXMgc3BlY2lmaWVkIGFzIGNvbW1hbmQgYXJndW1lbnRzIGNhbiBvdmVycmlk
ZSBgOj1gIGFzc2lnbm1lbnQuCkJ1dCB0aGUgY2hhbmdlIGlzIHN0aWxsIGhlbHBmdWwgaWYgc3Vj
aCBIT1NUQ0MgYW5kIEhPU1RDWFggYXJlIGZyb20KZW52aXJvbm1lbnQuCgpBY2tlZC1ieTogWW91
c29uZyBaaG91IDx5c3pob3U0dGVjaEBnbWFpbC5jb20+CgogICAgICAgICAgICAgICAgeW91c29u
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
