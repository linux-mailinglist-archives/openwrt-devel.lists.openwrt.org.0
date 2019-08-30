Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88576A3008
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 08:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpGjs2kq+s8I2o/Y7mLYKC9+Fogi4PCbamltAkNYSHQ=; b=LxAi0EaCJGO/X0
	sXEeDnI8VYLjP+jmwYGybYgUucBi/E6/t8/y4IFNMxbC+3ldyDncSfY3GM6Rl4zs00KUqTn9RNbQ9
	rHv9OWn+TxTfWp0zrzcaU65VAZwmNovSfAlVb3hNK/VOZQlIt6gtDSjIsIqBxMXxpWx4lLWAuwBO/
	1pUDnhb4MG3Ao9PoxE8qMBje8pigAMiIKZmDrTlzINgpNUZ63lt3YZztSxULhRFtNP1OzoP0b8np+
	K6yKqgGGll8kHR+JTwbq1P5DU/0+3R3QDFw/JEC9ypgAgHi/N/FDLycdW1dXfa47o8JkYTWkItXm/
	E3xHY62lESee6qnV/puQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aUu-0005w8-70; Fri, 30 Aug 2019 06:35:00 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aUV-0005vo-DV
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 06:34:36 +0000
Received: by mail-yb1-xb42.google.com with SMTP id y194so2072956ybe.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 29 Aug 2019 23:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PEs+HhZojim7mlzeDvUhQq1tj9VL17f9/NfA1ltTbcc=;
 b=kAecbYpW8E+DAU/xOB+KnTP326AfiAsJ2c9kmWpktlvUmtWBrrsHfBLE4+angt50TM
 4ftc49czz5wAIFidHsrbeYjXHRFPcHGaBXO7wF5crjIpa8RqYl6d0292UJFpmB9cuFGt
 pRA3pZwdtDJonxqQbPRxn5o6X7oO2HAayzDwKpSJcbKIPuBPPv3YqyH0C3918NjEwa1e
 IZDdMRxGc5hIOwMd9dAQb46MIxE4g7cO5T+4PSu653D7vKkdz2ymomFzSRzozk+WA6Cl
 iD9+RZ52SeRHiC/KEsGbQdQq2O57cuk8/pfoTv6pSU0RN6QL2L24VtW80d91O8/wWLw1
 EHAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PEs+HhZojim7mlzeDvUhQq1tj9VL17f9/NfA1ltTbcc=;
 b=ZPjD9qkYbcueFFJCHiEKtcDQ1ALCbz82RqX1Nh5yVxD/AGKO0awgfm+LfSgi2e/zMe
 QIiaIjSSNNDsyP2ysnY9goLyEN358BbWfh5EydAzzwlsfArICcuWOoCKh4iu/u3h8kUG
 7rDnGPrivBmkQ8LjWGQYjawH9AGHMrbqfwX8A6HHi56NeJDzQjR26WTQoJzh0uUj8bry
 enHmHEt9EZX0kHX/dRVhVQkjUT/7BTd83aZ7Gu5roZxatiy6tD3tCyPb3aBCbOUosBut
 x0LG54CumHvAxXEFGPx1dua7zhfsIOA6EJDttHPWzngSDqjiQh9GjhUq3FsIkXv0ryHj
 ULuw==
X-Gm-Message-State: APjAAAXU6weglds2ApyblvEECCJi5ZCBrM4qlGviSuHqQOvRlMs4QOTU
 qlKw5KPKJz88VwddA+r3hczag0rcHmG8yS9HYpbzaJFi
X-Google-Smtp-Source: APXvYqwJNLVVWk0k8tfDiQPNIiDGaVLSF1LZPzn7r+emJMfC9KRC/lIFQ+pFsnShYN9CnE+vZXRsYlgys3PQg634P2I=
X-Received: by 2002:a25:d2d8:: with SMTP id j207mr9448555ybg.112.1567146874204; 
 Thu, 29 Aug 2019 23:34:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190823061524.28883-1-zajec5@gmail.com>
In-Reply-To: <20190823061524.28883-1-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 30 Aug 2019 08:34:23 +0200
Message-ID: <CACna6rzOgAgkoVaEr_-m4C03hnYhVtOu26zpUVPCNRiN=OSt+Q@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_233435_477862_8A8759E4 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: use JSON for storing
 firmware validation info
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCAyMyBBdWcgMjAxOSBhdCAwODoxNSwgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPiBTbyBmYXIgZmlybXdhcmUgdmFsaWRhdGlvbiByZXN1bHQgd2FzIGJp
bmFyeSBsaW1pdGVkOiBpdCB3YXMgZWl0aGVyCj4gc3VjY2Vzc2Z1bCBvciBub3QuIFRoYXQgbWVh
bnQgdmFyaW91cyBsaW1pdGF0aW9ucywgZS5nLjoKPiAxKSBMYWNrIG9mIHByb3BlciBmZWVkYmFj
ayBvbiB2YWxpZGF0aW9uIHByb2JsZW1zCj4gMikgTm8gd2F5IG9mIG1hcmtpbmcgZmlybXdhcmUg
YXMgdG90YWxseSBicm9rZW4gKGltcG9zc2libGUgdG8gaW5zdGFsbCkKPgo+IFRoaXMgY2hhbmdl
IGludHJvZHVjZXMgSlNPTiBmb3Igc3RvcmluZyBkZXRhaWxlZCB2YWxpZGF0aW9uIGluZm8uIEl0
Cj4gcHJvdmlkZXMgYSBsaXN0IG9mIHBlcmZvcm1lZCB2YWxpZGF0aW9uIHRlc3RzIGFuZCB0aGVp
ciByZXN1bHRzLiBJdAo+IGFsbG93cyBtYXJraW5nIGZpcm13YXJlIGFzIG5vbi1mb3JjZWFibGUg
KGJyb2tlbiBpbWFnZSB0aGF0IGNhbid0IGJlCj4gZXZlbiBmb3JjZWQgdG8gaW5zdGFsbCkuCj4g
RXhhbXBsZToKPiB7Cj4gICAgICAgICAidGVzdHMiOiB7Cj4gICAgICAgICAgICAgICAgICJmd3Rv
b2xfc2lnbmF0dXJlIjogdHJ1ZSwKPiAgICAgICAgICAgICAgICAgImZ3dG9vbF9kZXZpY2VfbWF0
Y2giOiB0cnVlCj4gICAgICAgICB9LAo+ICAgICAgICAgInZhbGlkIjogdHJ1ZSwKPiAgICAgICAg
ICJmb3JjZWFibGUiOiB0cnVlCj4gfQo+Cj4gSW1wbGVtZW50YXRpb24gaXMgYmFzZWQgb24gKmlu
dGVybmFsKiBjaGVja19pbWFnZSBiYXNoIHNjcmlwdCB0aGF0Ogo+IDEpIFVzZXMgZXhpc3Rpbmcg
dmFsaWRhdGlvbiBmdW5jdGlvbnMKPiAyKSBQcm92aWRlcyBoZWxwZXJzIGZvciBzZXR0aW5nIGV4
dHJhIHZhbGlkYXRpb24gaW5mbwo+Cj4gVGhpcyBhbGxvd3MgZS5nLiBwbGF0Zm9ybV9jaGVja19p
bWFnZSgpIHRvIGNhbGwgbm90aWZ5X2NoZWNrX2Jyb2tlbigpCj4gd2hlbiBuZWVkZWQgJiBwcmV2
ZW50IHVzZXIgZnJvbSBicmlja2luZyBhIGRldmljZS4KPgo+IFJpZ2h0IG5vdyB0aGUgbmV3IEpT
T04gaW5mbyBpcyB1c2VkIGJ5IC9zYmluL3N5c3VwZ3JhZGUgb25seS4gSXQncwo+IGFscmVhZHkg
YSBuaWNlIGdhaW4gYXMgaXQgc3RvcHMgdXNlcnMgZnJvbSBpbnN0YWxsaW5nIGJyb2tlbiBpbWFn
ZXMuCj4KPiBGdXJ0aGVyIHBsYW5zIGZvciB0aGlzIGZlYXR1cmUgYXJlOgo+IDEpIEV4cG9zZSBm
aXJtd2FyZSB2YWxpZGF0aW9uIHVzaW5nIHNvbWUgbmV3IHVidXMgbWV0aG9kCj4gMikgTW92ZSB2
YWxpZGF0aW9uIHN0ZXAgZnJvbSAvc2Jpbi9zeXN1cGdyYWRlIGludG8gInN5c3VwZ3JhZGUiIHVi
dXMKPiAgICBtZXRob2Qgc286Cj4gICAgYSkgSXQncyBwb3NzaWJsZSB0byBzYWZlbHkgc3lzdXBn
cmFkZSB1c2luZyB1YnVzIG9ubHkKPiAgICBiKSAvc2Jpbi9zeXN1cGdyYWRlIGNhbiBiZSBtb3Jl
IGxpa2UganVzdCBhIENMSQoKSSBkZWNpZGVkIHRvOgoxKSBVc2UgbW9yZSBhY2N1cmF0ZSAidmFs
aWRhdGVfZmlybXdhcmVfaW1hZ2UiIGV4ZWN1dGFibGUKMikgRG9uJ3QgbW9kaWZ5IC9zYmluL3N5
c3VwZ3JhZGUgdG8gdXNlICJmb3JjZWFibGUiLiBUaGF0IHdhcwpleHRlbmRpbmcgL3NiaW4vc3lz
dXBncmFkZSB3aGljaCB3ZSBzaG91bGQgcmF0aGVyIGF2b2lkIGluIG9yZGVyIHRvCmZvY3VzIG9u
IG1vcmUgZ2VuZXJpYyB1YnVzIG1ldGhvZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
