Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223D714D363
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 00:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHMkGF4dYjvhPjWci02lD7B10GAHqwk6WEsaQG18m1A=; b=kXMDM5DAuQbyLy
	/KQwz72QoUKwPzi9eJ/Md7alFwGRSuFxUGpcQmqyZ+IewBVQpyKKM6ElUckvC/q/Kdbm/U/8dXaWU
	tLcFxOAKnbilO8OgzgqPVIvcvnfRX8K05Q4E/81njhUGvtShaMEgVx5M29nK6G1MhItGQquuYh8Hk
	DmsLwviJZrbQnw0dEMpXxakOJhhza7luQZER/bMQw6UeWQm9ihdqy5PLiazh1gOIL4y7v0JpaSOXk
	2X6wwSHDfkXXiXjbVsFZuOWIk2b4/A7sMBmICDGAf7644J3S8lIQu4kFV6rKfsJQ2lo1IQUfv4UAR
	PC4wAAy2l+W9H6Mno7Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwwXo-0005nZ-Fx; Wed, 29 Jan 2020 23:14:48 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwwXg-0005mf-7l
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 23:14:41 +0000
Received: by mail-pj1-x1043.google.com with SMTP id e9so486164pjr.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 15:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=M1CB0nXKAbm/Cpoz26PDvoJOYzPhs3CnXVycfmspNSc=;
 b=Ic09z5XDhwhuB4PHPBzLr6wci1VAEbmaDu8nH70ZdfAXZxyceSOaUl3/rMIFLjUFWS
 9JBBQKLrgcd9nIQRfZneaRZrGxTNf0wT3SGragA8E6PTZFrUT5a3eanhhVb13KRmzlHu
 gWduWB36VcZGXdBAAL3q91EYAdzTI2G6WZiyCGHJVR0nYxRE2O+NHiff/3PhHO2l2d8b
 tercgpwafriRqyGkcYLVazDRDPzUeqeuPb6H8qM29W9PPS+TqW+Lcq+nWvn73qBj9y9Z
 +Va1egyILxByOY+b3kN7dd1XUGgk1MdTyVDYGD66js6fptg49bNVq+h/yK0P+qN8+PrM
 DAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=M1CB0nXKAbm/Cpoz26PDvoJOYzPhs3CnXVycfmspNSc=;
 b=nqPZpTnYf1ifJ2hXHR5UD4/S90NR7HQ3ClchgGoAHd5/bga1ZsaQzFqdx56tQPJQi3
 DeSszeOJb/z/nGKxwQb5w2rlnkfZQ0pafQZ0j1UnRKaq+y9fyZJqmH9I8KkTzI5haFkg
 khBaf/1waR1FJWPKB4CpzAAQx6w9pXcjmaVfvQaXodykQMMIn8EBfhXkxbuw3NmfERu7
 gQl1cDpS/PHM5UPpt5prMNKcwTsFBW8IUaVlKczkV57Ub0KQjo4Iqg1s51nlVDv2QPZT
 vg/wVRU51/+T9XlEfRV6vKP/Ic2E0ILWzb5EcfcmZYjjvcr6MxSN7xrqsoIWDYjyXRub
 u4RQ==
X-Gm-Message-State: APjAAAWwCBI8N+rWrNW7Fe2PAB+SGj3qFlNlMs/btsfVnCzI+f5syudR
 5zRv04FTPaswAuv1gLWr2Yo7kwqU
X-Google-Smtp-Source: APXvYqzRvccAYo8vBZtaYmOQmWJ1l1jc80H59I4xUzTpyeU7UIows2FrPXknDJZuk2nDldajzLjWhA==
X-Received: by 2002:a17:90a:8545:: with SMTP id
 a5mr2345623pjw.43.1580339673643; 
 Wed, 29 Jan 2020 15:14:33 -0800 (PST)
Received: from ?IPv6:2002:452a:d6:0:5479:8b96:e269:85ca?
 ([2002:452a:d6:0:5479:8b96:e269:85ca])
 by smtp.gmail.com with ESMTPSA id q21sm3789060pff.105.2020.01.29.15.14.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 15:14:32 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 29 Jan 2020 15:14:30 -0800
Message-Id: <81451FC6-CB4C-4A43-87B0-50BCF581678E@gmail.com>
References: <20200129162210.GA78186@meh.true.cz>
In-Reply-To: <20200129162210.GA78186@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_151440_307569_358EEEEE 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEphbiAyOSwgMjAyMCwgYXQgODoyMiBBTSwgUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gCj4g77u/Um9zZW4gUGVuZXYgPHJv
c2VucEBnbWFpbC5jb20+IFsyMDIwLTAxLTI1IDE1OjA0OjAzXToKPiAKPiBIaSBCasO4cm4gYW5k
IFJvc2VuLAo+IAo+Pj4gT24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMTI6MjUgQU0gQmrDuHJuIE1v
cmsgPGJqb3JuQG1vcmsubm8+IHdyb3RlOgo+Pj4+PiAKPj4+Pj4gLSAgICAgaWYgKChydF9zeXNj
X3IzMihTWVNDX1JFR19DSElQX1JFVl9JRCkgJiAweEZGRkYpID09IDB4MDEwMSkgewo+Pj4+PiAt
ICAgICAgICAgICAgIC8qIChHRTEsIEZvcmNlIDEwMDBNL0ZELCBGQyBPTiwgTUFYX1JYX0xFTkdU
SCAxNTM2KSAqLwo+Pj4+PiArICAgICBpZiAoKHJ0X3N5c2NfcjMyKFNZU0NfUkVHX0NISVBfUkVW
X0lEKSAmIDB4RkZGRikgPj0gMHgwMTAxKSB7Cj4+Pj4+ICsgICAgICAgICAgICAgLyogKEdFMSwg
Rm9yY2UgMTAwME0vRkQsIEZDIE9GRiwgTUFYX1JYX0xFTkdUSCAxNTM2KSAqLwo+Pj4+PiAgICAg
ICAgICAgICAgbXRrX3N3aXRjaF93MzIoZ3N3LCAweDIzMDVlMzBiLCBHU1dfUkVHX01BQ19QMF9N
Q1IpOwo+Pj4+PiAgICAgICAgICAgICAgbXQ3NTMwX21kaW9fdzMyKGdzdywgMHgzNjAwLCAweDVl
MzBiKTsKPj4+Pj4gICAgICB9IGVsc2Ugewo+Pj4gCj4+PiBJZiB0aGF0J3MgcmVhbGx5IGhlbHBp
bmcgdGhlbiBJIGJlbGlldmUgaXQgd291bGQgYmUgdXNlZnVsIHRvIGFkZCBzb21lCj4+PiBzb3J0
IG9mIGNoaXBfcmV2X2lkIHByaW50ayBoZXJlLiAgV291bGQgYmUgZ29vZCB0byBrbm93IHdobyBo
aXRzIHRoaXMKPj4+IGFuZCB3aHkuLi4KPiAKPiBJIGp1c3QgcXVpY2tseSBza2ltbWVkIHRocm91
Z2ggdGhlIGNvZGUgYW5kIGl0IHNlZW1zIGxpa2Ugd2UndmUgdGhhdAo+IGluZm9ybWF0aW9uIGFs
cmVhZHkgaW4gZG1lc2c6Cj4gCj4gU29DIFR5cGU6IE1lZGlhVGVrIE1UNzY4OCB2ZXI6MSBlY286
MiAgICA9IDB4MDEwMgo+IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjhBTiB2ZXI6MSBlY286MiAg
PSAweDAxMDIKPiBTb0MgVHlwZTogTWVkaWFUZWsgTVQ3NjIxIHZlcjoxIGVjbzozICAgID0gMHgw
MTAzCj4gU29DIFR5cGU6IE1lZGlhVGVrIE1UNzYyMEEgdmVyOjIgZWNvOjMgICA9IDB4MDIwMwo+
IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjBOIHZlcjoyIGVjbzo2ICAgPSAweDAyMDYKPiAKPj4g
VGhhdCdzIGp1c3QgY29zbWV0aWMuCj4gCj4gY3VycmVudDogPT0gMHgwMTAxCj4gbmV3OiAgICAg
Pj0gMHgwMTAxCkkgbWVhbnQgdGhlIGNvbW1lbnQgdG8gcHJpbnQgdGhlIFNvQyBJRC4KPiAKPiBE
b2Vzbid0IGxvb2sgbGlrZSBhIGNvc21ldGljIGNoYW5nZSBub3IgY29ycmVjdCwgc2VlIGFib3Zl
IGxpc3QuIFdoYXQgYWJvdXQKPiBmb2xsb3dpbmc/Cj4gCj4gIGlmIChyYWxpbmtfc29jID09IE1U
NzYyWF9TT0NfTVQ3NjIxQVQpIHsKPiAgICAgICAvKiAoR0UxLCBGb3JjZSAxMDAwTS9GRCwgRkMg
T0ZGLCBNQVhfUlhfTEVOR1RIIDE1MzYpICovCj4gICAgICAgbXRrX3N3aXRjaF93MzIoZ3N3LCAw
eDIzMDVlMzBiLCBHU1dfUkVHX01BQ19QMF9NQ1IpOwo+ICAgICAgIG10NzUzMF9tZGlvX3czMihn
c3csIDB4MzYwMCwgMHg1ZTMwYik7Cj4gIH0gZWxzZSB7Cj4gICAgICAgLi4uCj4gIH0KTWF5YmUu
IEFsbCBJIGtub3cgaXMgdGhhdCB0aGUgcGF0Y2ggYXMgSSBwb3N0ZWQgaXQgd29ya3Mgd2VsbCBh
Y2NvcmRpbmcgdG8gcGVvcGxlIG9uIHRoZSBmb3J1bXMuCj4gCj4gSSBqdXN0IGRvbid0IGtub3cg
d2hpY2ggTWVkaWFUZWsgU29DIGlzIDB4MDEwMSAodmVyOjEgZWNvOjEpLCBidXQgSSBhc3N1bWUs
Cj4gdGhhdCB0aGlzIGNvbmRpdGlvbiBpcyBqdXN0IGJvZ3VzIGZyb20gdGhlIGJlZ2lubmluZy4K
PiAKPiAtLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
