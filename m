Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8397A300D
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 08:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILFfRsc+ocsqD+jrpDdfIZ/VHVE3gKL8JOK202cXcdk=; b=psi1N5bKDuBI1s
	SZzK4HN646XSEFRRTnSnd8Lc/eFr4Az0Zl7ptEpZj088rBSbcVehdTDmkTx0lQ2+eV2R9NPAlynRI
	ZyDFHIPYnPj1c03ZMopJkNK5SEW6D7/s6hn49uOTCQ7uNufP0A+jYO1oTF08XCKaMrcIt5+F87dmd
	LonkV6HRI4rmdnQUor+JTdxZlFU1+o+BcUA6P5ayy5nWIBFHEZMBBy3z1GieuVNwGnQ8TKh7El5vJ
	amdCBpQXkgRfGhn5rj17EcIM0WvgQ4C0DsyEWWVKlLxykE9IIeO5mXHyo+pA2LvP3EFCYjH8+6Nhz
	Al+qIt6y2IiqTy+cJJgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aVZ-0007fz-Dq; Fri, 30 Aug 2019 06:35:41 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aV8-0007T3-F7
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 06:35:15 +0000
Received: by mail-yb1-xb44.google.com with SMTP id u32so2074792ybi.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 29 Aug 2019 23:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/PrpEEtobhObbxPFA9aamfh/CulM2bQGc7u70jFuMoo=;
 b=sTzaZMCXUZGiGwv+sjFjg29jL1saUyIlpbAJbmV0+51BNF3qYrghDG2FLge4YCWb1V
 o1jA3bo7/9LIFRUUpOnJtVZg9ISbasaT20OUJw4SelsKL6mcMiBqyWwtjzhLn3pv82wN
 abnqrsfiZKiF/pfa2G+dGpG/RusFJD0/xyFmhourG2mx+3B5xCfE+Rew7FaxASjwP+GE
 gcycBOq98AF1z3QgG2K7nzW/aWP+LdyNzTu4jmZ8YMNnkBWQpmk+Mmqe32k2GAGE3Fzs
 dLtG7kOttEqIb+Omy2YdlnWVIgEImoIzH9qePvhOTzv5sxxvLa/H/JV0LYf/0wih8X6E
 oz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/PrpEEtobhObbxPFA9aamfh/CulM2bQGc7u70jFuMoo=;
 b=I5e/oHsZl2bf8/gwZqf2dYS4XZMQUsdt0HIbfQDjA9vqGLGP3MfLLS3y3md8DsImQg
 Ys+RnlZyV6Q2c+df4Uf/zZ3dsJce8qGD4CNhiGb1GZ1uMJV4P8nnnWupXO9gU42btIbV
 5YvAkaedWuJIN8dE693qPAGG707XH/VBeKgoh2EyrRZR1qyzzmXrM/FnBRpxDsP7G6sZ
 T+fOAMllT+iXwUGKWInlBV5sXolEtoZKLEGXFk61DojXvILIVByb6Uh/FxHze/pevc3f
 /jyUSlm61AZZhC+p9lrUp72rxFOlM1YZylRDj3urhXfO3XAc0dk5oXz3TKNWwn8dhnZE
 WLKg==
X-Gm-Message-State: APjAAAU9MxC9YS/A9MP+dmnro2onwXJkZoVUwSiAy68kjBKtdmIm8Ycd
 RqT53HMVmcqo5sZQcV+D6oFfgxzBUPpwEB67MkE/jg==
X-Google-Smtp-Source: APXvYqyfMXt9bLfHUxIIpjWChbx1aECNs7meVsII8R1N1wGE2hLshRQfj7RGEKnE52QlV4C/JUDp0Ns9fTHIkRin4RY=
X-Received: by 2002:a25:3242:: with SMTP id y63mr9883822yby.455.1567146913232; 
 Thu, 29 Aug 2019 23:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190823061524.28883-1-zajec5@gmail.com>
 <20190823061524.28883-2-zajec5@gmail.com>
In-Reply-To: <20190823061524.28883-2-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 30 Aug 2019 08:35:02 +0200
Message-ID: <CACna6rwnFCy7Jv-QjwYK=B_obM7e_D_cDFZaRnpeHtSrrAa2XQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_233514_655959_873C8C6C 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] brcm47xx: extend firmware validation
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
aWwuY29tPiB3cm90ZToKPiBUaGlzIHByb3ZpZGVzIFRSWCB2YWxpZGF0aW9uIHJlc3VsdCwgc28g
ZmluYWwgSlNPTiBtYXkgbG9vayBsaWtlOgo+IHsKPiAgICAgICAgICJ0ZXN0cyI6IHsKPiAgICAg
ICAgICAgICAgICAgImZ3dG9vbF9zaWduYXR1cmUiOiB0cnVlLAo+ICAgICAgICAgICAgICAgICAi
Znd0b29sX2RldmljZV9tYXRjaCI6IHRydWUsCj4gICAgICAgICAgICAgICAgICJ0cnhfdmFsaWQi
OiB0cnVlCj4gICAgICAgICB9LAo+ICAgICAgICAgInZhbGlkIjogdHJ1ZSwKPiAgICAgICAgICJm
b3JjZWFibGUiOiB0cnVlCj4gfQo+Cj4gSXQgYWxzbyBwcmV2ZW50cyB1c2VycyBmcm9tIGluc3Rh
bGxpbmcgYnJva2VuIGZpcm13YXJlIGZpbGVzLCBlLmcuOgo+Cj4gJCBzeXN1cGdyYWRlIC1GIC90
bXAvZGhjcC5sZWFzZXMKPiBJbWFnZSBtZXRhZGF0YSBub3QgZm91bmQKPiBJbnZhbGlkIGltYWdl
IHR5cGUuIFBsZWFzZSB1c2UgZmlybXdhcmUgc3BlY2lmaWMgZm9yIHRoaXMgZGV2aWNlLgo+IElt
YWdlIGNoZWNrIGZhaWxlZC4gVGhpcyBmaXJtd2FyZSBjYW4ndCBiZSBpbnN0YWxsZWQuCgpJIHBv
c3Rwb25lZCB0aGlzIHBhdGNoIGZvciBub3cgYXMgY29tbWl0IG1lc3NhZ2Ugd2Fzbid0IGFjY3Vy
YXRlCmFueW1vcmUuIEkgZGVjaWRlZCB0byBkcm9wICJmb3JjZWFibGUiIGNoZWNrIGZyb20gL3Ni
aW4vc3lzdXBncmFkZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
