Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40241AB4E9
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 02:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jhd98c5wFW4Y6Hv1tb7KL/teXoOxMA6EsOFjpfvdc3I=; b=WOSj0Mkmfwt6D9cQ/Gf7DrZYE
	vQfTzoCkiJ/2GJXuDX7x7l4EnAyi7HkuxwVsaTB+Q9RLWKbZtirEst/TjVA32Bx/40IKifxP9v2pT
	IfltdQ3cYL1Di5UANYMcfla1v/zAozcxbTuNz5S7wqVqy4QO99iYJ7DNt0yXK/HRapZNkBT25wpoI
	oQKMrw6U4RBfZf6QVzY5I06x1X44BoRmyfzEk+vjxFb6cymZgmF1DEbOwDCLezpzNEdeKc/5rDZLO
	SJtrp/dRhZ4FrYjsJ35K8K9cVGYPjCGJzZHEth4A/dBIoMTqYklNL+bGFJH7Jmraq6j4XobnKwjZ9
	BduuyeKlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOsn5-0005yJ-Li; Thu, 16 Apr 2020 00:54:03 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOsmn-0005oD-0E
 for openwrt-devel@lists.openwrt.org; Thu, 16 Apr 2020 00:53:46 +0000
Received: by mail-wr1-x430.google.com with SMTP id j2so2844484wrs.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 17:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=RV0RZBWsmYOKEeN1w7Xd6pwJ5rtfjuw90QYFNFGnKm0=;
 b=OTaNQly540+A04ob+D8e6pO7+WnPqVTPkat6xC3zLicRU1ykzzSrFyMGn312+zdaF0
 e2RQtvFfBQPzrcdfJPFhGKbx5cjjufnFqzDyWBbyVstteWZGoI61op3QaWWtYnLLKQOc
 YVUkGl+nua/bDMYEK2w6DaCgI80tLd1lmttacVr7QAu44H7jxlPbWmZaJ+wTIU2mpFUs
 6ZsTzzDflfmY2GUwbSUH/meiE69Jz4It8Az94bCZtazHssvLS4tXV3VdoFLWfj7HkrNE
 M+iPe6R6F2iRxDMJMLoXGhQOAQY29yGqy+UHtCrV3vHV9k48fSVviJK/aZ5INitwG0wi
 r82A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RV0RZBWsmYOKEeN1w7Xd6pwJ5rtfjuw90QYFNFGnKm0=;
 b=AucOn39zEDn0Lzgw5slW+VuONcDfuub/Z1kxy6sOD238Gk96w82fsqKvxa0hItP2EF
 pJl0tn+NOutJSODyq4XVG5+3D+V0P12vzOtSTfS3z0tuuJzdbN+eCoVLlB4HGEUOQP6d
 sC1+dsM3UUTHbgijlNNR/CN3jpv0+HZZuG2PP1qWdouF2TuzTwV4oTVWsqHfITW247Dd
 A3yojY5y+/G5k7KMGNSaduJfnpP5TLvZlVbr1pEEh0mzzK9htAOu+OAA06q4pWdqntYQ
 JTvNlz1tu6GCVcW5JqLNQEiodQadkqUebtI+G18HdlKPjkjQJ612ntgcGijTLpyJFxRS
 O3cg==
X-Gm-Message-State: AGi0PuY3/0hmZrkue6iW3HvuGzfQMredeCs2bUYNiHJUPc4rRPIzzJd6
 mJUtzTezlWi8+3uMA4AIyJZG3/Tp
X-Google-Smtp-Source: APiQypKJlrSwFixq4x9QEUya90R7KKR5OpngMxZasCuMT1CmudrOjL0pB9oYiB7Uydm+t9VePkc1AQ==
X-Received: by 2002:a5d:6445:: with SMTP id d5mr4437231wrw.373.1586998422293; 
 Wed, 15 Apr 2020 17:53:42 -0700 (PDT)
Received: from [192.168.1.230] ([151.38.236.84])
 by smtp.gmail.com with ESMTPSA id c190sm1594935wme.10.2020.04.15.17.53.41
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 17:53:41 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <5a867e8b86c262fcfd29df991becb493731e86c7.camel@aparcar.org>
 <20200415220218.GG14478@makrotopia.org>
 <CAKiAkGSfF=GNBo9=UX2wa4z6QOwDkkc_gqq=6euH7qjGYFSpdw@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <3747c28b-74c2-6cbd-ce20-18d2048d74c0@gmail.com>
Date: Thu, 16 Apr 2020 02:53:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKiAkGSfF=GNBo9=UX2wa4z6QOwDkkc_gqq=6euH7qjGYFSpdw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_175345_091101_AA4D4743 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [RFC] x86: use multiple profiles
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

CgpPbiAxNi8wNC8yMCAwMToxNiwgSm9lbCBXaXLEgW11IFBhdWxpbmcgd3JvdGU6Cj4gUmVsYXRl
ZDsKPiAKPiB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgYSBzdXBwb3J0ZWQgYXRvbWljIHVwZGF0ZSBt
ZXRob2QgCj4gKHJvbGxmb3J3YXJkL2JhY2spIGFuZC9vciBhZGFwdCBzeXN1cGdyYWRlL29wa2cg
dG8gY29wZSB3aXRoIGZ1bGwgCj4gc3lzLXVwZ3JhZGUgc3R5bGUgb3BwZXJhdGlvbi4KPiAKPiBG
ZWRvcmEgQ29yZU9TIGFuZCBPU1RyZWUgbWF5IGJlIGEgcG9zc2libGUgaW5zcGlyYXRpb24gcG9p
bnQuIEVpdGhlciB3YXkgCj4gSSBhbSBnZXR0aW5nIHRpcmVkIG9mIG5lZWQgdG8gaGF2ZSB0byBz
dGFuZCB1cCBhIG5ldyBWTSAtIGNsb25lIAo+IGNvbmZpZy9vcGtnIHVwZGF0ZSBhbmQgdGhlbiBz
d2l0Y2ggb3ZlciBmcm9tIHJ1bm5pbmcgVk0gYXMgYmVpbmcgdGhlIAo+IG9ubHkgZGVjZW50IHdh
eSBvZiBkb2luZyBzeXN1cGdyYWRlcyBvbiB4ODYgdGFyZ2V0cy4KPiAKPiAtSm9lbAo+IAoKSSd2
ZSBiZWVuIGRvaW5nIG5vcm1hbCBzeXN1cGdyYWRlcyBmb3IgYSBsb25nIHdoaWxlIG9uIHg4NiB3
aXRoIHNxdWFzaGZzIAppbWFnZXMuIEkgdGhpbmsgdGhlIG9ubHkgcHJvYmxlbWF0aWMgc3lzdXBn
cmFkZXMgb24geDg2IGFyZSBvbiBleHQ0IAppbWFnZXMsIGFuZCB0aGVyZSBpcyByZWFsbHkgbm8g
cmVhc29uIHRvIHVzZSB0aGVtIGltaG8uCgotQWxiZXJ0bwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
