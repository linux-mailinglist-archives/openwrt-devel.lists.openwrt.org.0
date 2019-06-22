Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0154F5B9
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 14:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crG6paLi5QLVxAayTNHq8Z+4kmzzArj88++zJzA83AQ=; b=JNVPOp50CgkQRQ
	ko7P6v1QM9Qj158p3UNTkdLFSA/rF3R5sb4mxXEuOBTakrWDIctR1Ly/pUUWFP3IJnMUxtGEtE9ZV
	awgpd8KMmPF+lbamgJY+bZyuDhJgtfnNWDme3dRSbKhZGN9Q5GwR8Uw3+di1Bnt9QQIDz7ol2gtio
	Gmg46z1DUn2r1mV5nOcr+yWJ1CTQ9FW+ZkxW+D9XIJ7FSUoH0hFQq37/ssbA7sOx39AQE1BFBZD2Q
	coQOsIRJlWYQOrrrZp69ghr5c4v0cR/1Tybh5uD1g0pNdup0hapVwzIvD/z8iGCsSDYYuaXIdOxwG
	HC6BIm5ZZqsuplebgn9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hef45-0001h0-Nz; Sat, 22 Jun 2019 12:24:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hef3u-0001gK-Qb
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 12:24:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id r16so9033319wrl.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 05:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KT8FLKwRQrq3+l96I49Zrs5Ub8ZhDIc4pPdrrKR+W1Y=;
 b=VKNVzU4WvvlSL61fP45bHVCdxQLPAfGJxg3+YpPWd1iq+vgko+EaEh6RO03flryqN8
 qr9gIxmHo1LyJbvdPzfFxCQkSVd9dYvh05Dw/gXLcQitdJV104FwK1LbgM/6dag0tx0Y
 N3K5rXQwaf9f/p8L0wESPkZt5PpcBEecqxrB6Hwv7tz4vNjeFr9tdLVtLcj1ozlX7Kym
 Jvg+06tLrb62OLVkjHwtit3eUQrWdxBx6HcQuR7xPFNff4zBmFtRno7RHw6+mFNanzqx
 taJdWJqrtNnMBGLH3trDnfr3pegr8xhH9uv3N0Ad2XDLyfAwlJLSeV3CxX0oypUuSce1
 oCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KT8FLKwRQrq3+l96I49Zrs5Ub8ZhDIc4pPdrrKR+W1Y=;
 b=mlRQuiG6JpEadBMqNhl4bmFihFlWeUatAuTH6wK+u/HjJaHJ6/JqUHynBYrJqB1Ue+
 sd3mn/ssUjt7XUfTwMhTubt1XRLVzsriPfQWxl05CqSdHPWmQRfjGd5xQZZdWgYcLF3Z
 PW1ukSBtdwCN4Iq+D66pRUJVoJJ3kAfChzScN/MdGT0VGuzny5dcwomko1GpbiLKVcOW
 hrVr4bYQFzHtx1+1iK9QfPjXJnlHNgIl1VkjqKoMUiXRx1DRZeLIEkJ07eO57mcG41uo
 blkqYiG1PN1M1ryJqGMq50UYH523CKSJ567urO7XmAOGyWm624JQ/AgSJQohEnSpX/PA
 6mmA==
X-Gm-Message-State: APjAAAWruaMU8GnIiLPc0OpHEZBdBcbznfiGEazja5tFBw75R1XigE10
 MeT78N9DnbzwRY+zFaCFMGgsDI+svx84qC3MJ7Y=
X-Google-Smtp-Source: APXvYqy0w9F3K2jtJZ1JuHCL3vlQDs9zN/gd/zzV4tmDlVTUwob2Yi9UM6jfq8wDmzTau1lY/3RB3VdU2GWsMM3CMcg=
X-Received: by 2002:adf:8028:: with SMTP id 37mr99806638wrk.106.1561206244187; 
 Sat, 22 Jun 2019 05:24:04 -0700 (PDT)
MIME-Version: 1.0
References: <3f540e31-e4ee-1575-fd4d-3b2225aec3b0@gmail.com>
 <30402d4c-f580-4186-0290-6c52dbab362e@gmail.com>
In-Reply-To: <30402d4c-f580-4186-0290-6c52dbab362e@gmail.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 22 Jun 2019 14:24:06 +0200
Message-ID: <CAOiHx=kA6yyuTmXuBp-R8tTjj2VTkcc-Btj3rt1RrGcqx2yAEA@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_052406_892157_7607B837 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Dependency problem after changing package name
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU2F0LCAyMiBKdW4gMjAxOSBhdCAxMzo1MCwgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIDIyLjA2LjIwMTkgMTM6MzcsIFJhZmHFgiBNacWCZWNraSB3
cm90ZToKPiA+IEkgcmVuYW1lZCBsb2NhbGx5IHBhY2thZ2UgImx1YSIgdG8gImx1YXgiIGFuZCB1
cGRhdGVkIGRlcGVuZGVuY3kgb2YKPiA+ICJsdWEtZXhhbXBsZXMiLiBBIHByZXR0eSBzaW1wbGUg
Y2hhbmdlLgo+ID4KPiA+Cj4gPiBBZnRlciB0aGF0IGNoYW5nZSBJIGNhbid0IGJ1aWxkIE9wZW5X
cnQgYW55bW9yZS4KPiA+Cj4gPiAjIG1ha2UgVj1zCj4gPiAoLi4uKQo+ID4gQ29sbGVjdGVkIGVy
cm9yczoKPiA+ICAgKiBzYXRpc2Z5X2RlcGVuZGVuY2llc19mb3I6IENhbm5vdCBzYXRpc2Z5IHRo
ZSBmb2xsb3dpbmcgZGVwZW5kZW5jaWVzIGZvciBsdWEtZXhhbXBsZXM6Cj4gPiAgICogICAgICBs
dWF4Cj4gPiAgICogb3BrZ19pbnN0YWxsX2NtZDogQ2Fubm90IGluc3RhbGwgcGFja2FnZSBsdWEt
ZXhhbXBsZXMuCj4gPiBtYWtlWzJdOiAqKiogW3BhY2thZ2UvTWFrZWZpbGU6Njg6IHBhY2thZ2Uv
aW5zdGFsbF0gRXJyb3IgMjU1Cj4gPiAoLi4uKQo+Cj4gSm9uYXMgaGFzIGp1c3QgaGVscGVkIG1l
LiBJIGZvcmdvdCB0byBjaGFuZ2UKPiBQYWNrYWdlL2x1YS9pbnN0YWxsCj4gdG8KPiBQYWNrYWdl
L2x1YXgvaW5zdGFsbAo+Cj4gSXMgdGhhdCBwb3NzaWJsZSB0byBtYWtlIGVycm9yIG1lc3NhZ2Ug
c29tZWhvdyBtb3JlIG1lYW5pbmdmdWw/CgpBdCB0aGlzIHN0YWdlIHRoZSBkYW1hZ2UgaXMgYWxy
ZWFkeSBkb25lLCBhbmQgb3BrZyBkb2VzIG5vdCBrbm93IGFib3V0CmFueSBvZiB0aGUgTWFrZWZp
bGUgc3R1ZmYuIFdlIGNhbiB0cnkgdG8gd2FybiB3aGVuIGNyZWF0aW5nIHRoZSBpcGtzCnRob3Vn
aDsgc29tZXRoaW5nIGxpa2UKaHR0cHM6Ly9naXQub3BlbndydC5vcmcvNzY5NzE0NjFiNzdkOGFj
ZTdjNGZmMjA4ZGUwNTEwMzAxZTc1ZWNjMQpzaG91bGQgZG8gdGhlIHRyaWNrLgoKClJlZ2FyZHMK
Sm9uYXMKCgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
