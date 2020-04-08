Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CA21A1C95
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 09:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LuC4FGgmVKDWysWKLxM9D70EdHzR6v4fp7UVakJ/ft8=; b=NOOtcRsIKPEXDf
	+v1e2H686PObP6onRRfhuYUjHYx4F/0ZV9yC0EP18QS9pJWlVQxIxBeKCk+jwE1shIWlS1sHqT9PP
	hw/UjqV+RrEyBH9NHTEpl/d9A4piGDXDqpGa0MNj8aQve7JGOmu48gLN76RrNze4O8mPIoLG/UbjM
	YI3K1bxJEhDccffvRzzFAGvKKNCmUsak/O3z5B3JuNI79vVbIE5bpDhAhndyLImUXbf+mA7DxfpIB
	WsEPGbTkepVAToYXXVKzJ2cjUk0aNUUcnJ/YrM771pB8Sunt/nAAQdgKeeIpNZsHmeucI+GoVbdFy
	zn0OGo7pKoOpUZ5IhMMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM56s-0004F9-Df; Wed, 08 Apr 2020 07:26:54 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM56l-0004Ef-Pq
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 07:26:49 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 0387Qe6b022960
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Wed, 8 Apr 2020 09:26:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1586330803; bh=lZMBipw48rGxXUfptJQs8NH5b7o27ytp4/HX+0DkJ34=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=crL7ZMZRtAH2cR2z3Ldn8pze56DuzrL5KUyEvTa6OCUe9TTYGHwWAhkUdHEc2BdlE
 M++xVndZtH9QNaVOhnGvOUZZS/xnutxvfKJpQrU5kQ1RsESpWu5xcrF+7bUQjW97e0
 zUGIl6EgML2xbdLTLRtVnTySC4Mj44Ygmpd4SfmU=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jM56d-0006Ug-OM; Wed, 08 Apr 2020 09:26:39 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Organization: m
References: <87eeszs9uu.fsf@miraculix.mork.no>
 <b5c15de9-5d32-2a99-922b-22b4fb1056b8@iki.fi>
 <874ktvs62p.fsf@miraculix.mork.no>
 <6c55f8f0-7950-bb4f-30e0-d245327a1f86@o2.pl>
Date: Wed, 08 Apr 2020 09:26:39 +0200
In-Reply-To: <6c55f8f0-7950-bb4f-30e0-d245327a1f86@o2.pl> (Tomasz Maciej
 Nowak's message of "Tue, 7 Apr 2020 17:16:00 +0200")
Message-ID: <87eesyqvyo.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_002648_181391_604376A3 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Is it possible to create two images for the
 same device with a different set of DEVICE_PACKAGES?
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
Cc: Hannu Nyman <hannu.nyman@iki.fi>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4gd3JpdGVzOgoKPiBJbiBpbmNsdWRl
L2tlcm5lbC1kZWZhdWx0cy5tayB0aGVyZSBpcwo+IElOSVRSQU1GU19FWFRSQV9GSUxFUyA/PSAk
KEdFTkVSSUNfUExBVEZPUk1fRElSKS9pbWFnZS9pbml0cmFtZnMtYmFzZS1maWxlcy50eHQuCj4g
TWF5YmUgWW91IGNvdWxkIGFkZCBhIGxvZ2ljIGZvciBpZ25vcmUgZmlsZXMgbGlzdCBpZiB0aGV5
IGV4aXN0LiBObyBvdGhlcgo+IHNvbHV0aW9uIGNvbWVzIHRvIG15IG1pbmQuIAoKVGhhbmtzIGZv
ciB0aGUgc3VnZ2VzdGlvbi4gIEJ1dCBJIGJlbGlldmUgdGhpcyBmaWxlIGlzIHVzZWQgZGlyZWN0
bHkgYXMKY29uZmlnIHRvIHRoZSBpbml0cmFtZnMgYnVpbGRlciBpbiB0aGUga2VybmVsLiAgRXh0
ZW5kaW5nIHRoZSBmb3JtYXQKd291bGQgbWVhbiBtb2RpZnlpbmcgdXNyL2dlbl9pbml0X2NwaW8u
YyBpbiB0aGUga2VybmVsLiAgVGhhdCdzIGEgYml0Cm92ZXJraWxsIElNSE8uCgpJIGFtIHByb2Jh
Ymx5IGVuZGluZyB1cCB3aXRoIHRoZSBzaW1wbGVzdCBzb2x1dGlvbjogRHJvcHBpbmcgdGhlIGxh
cmdlCmZpcm13YXJlIHBhY2thZ2UgZnJvbSBERVZJQ0VfUEFDS0FHRVMuIE1ha2luZyBkZWZjb25m
aWcgaW1hZ2VzIHVzYWJsZQpmb3IgZmlyc3QtdGltZSBpbnN0YWxsYXRpb24gaXMgbXVjaCBtb3Jl
IGltcG9ydGFudCB0aGFuIGhhdmluZyBldmVyeQpuZWNlc3NhcnkgcGFja2FnZSBpbmNsdWRlZCBp
biB0aGUgZGVmY29uZmlnIHN5c3VwZ3JhZGUgaW1hZ2VzLgoKCkJqw7hybgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
