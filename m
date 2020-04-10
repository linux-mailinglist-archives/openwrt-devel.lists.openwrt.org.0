Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969091A4B88
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 23:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bX8N49H8kX+T1rJ+JpuBYVVxcbHwYXf37uU1QEkbzPs=; b=tb6K2YXW2wrnRe
	EWBJl8dTNra97ytSjH2imEupUCmzXy00yOZ7oo5nqvHwPXmPwraFgtZAjJPKMJBgVW7KC49eXPHef
	Mb9Y8mxQ4CP75e+ZdbcQqIflZzcAR6YD+89gMPvRhXWkvW9eKiS9rGoMY1PR47fvwfQMF2cWKDqRg
	VxUbf5VBO5JjvlAqhwe3WS/foE8XjH58PZVtMvcRraLZWcPFHPedhfN/6qrS9WryLOm15dO4qQCnW
	UjAwYt3PU5wiyJkonQZI6C6C6AMzJlcQ6wfCBk9ZcFjvkfcVBe5KosgAAjvnAZaCTmrMH1UjE9mBz
	rdMgVro1yj0Gl2v5+7DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN18J-0002QJ-Ay; Fri, 10 Apr 2020 21:24:15 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN18C-0002Q0-VL
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 21:24:10 +0000
Received: by mail-io1-xd32.google.com with SMTP id m4so3090964ioq.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 14:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+zHH3gSOuLJdgTn27j57o7MdeE5NZ/sL/Q7j6/a4m7k=;
 b=RWv1mTsw9RhXqq6+KyExdJS4U0YMls6CR3wE+EoF8AEOuF+84I2cETGqu5pnGvarmZ
 fZg+M7RWIAuUqN42OYRfBBW+TZruIy2X1k1bCOB50ezGAQJRez4Pq25BB+HYyiXXr0Nl
 51M6zF5/IVznytfS3MAhk6SADfZWooEwkPu+jpCrJT18H8b2rIMuay/NpPT/4Ny0tI3S
 b0vuK6I5AV0tFXhNUH30RBLIvSGgB7rROkaCjcAiUQNWiJmpg1Rdn3W+iGE1/6LE/0oh
 e/mYsUrI5luqrD+Sdl+gbQjp8JPNkK1jNz856nfpzuHs28M5wq0eyDcqg+vsbrUlFyZ+
 MiLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+zHH3gSOuLJdgTn27j57o7MdeE5NZ/sL/Q7j6/a4m7k=;
 b=guwlCaBT/zL+Qok4h9Le+eDUc8FAE8rXJN28g3adhzLgyNBzHgaJRcIk1rWWp0vS7U
 1vYMK3tIH0kcQlsOdzUGBzeCEUGLlMsmlUYt0e1kxNbLg8lha72aieLSRFcgHiHpsitw
 +KSalBND+LEUNGEHxuDR3z6zg5iSH4KHCpai9LgbeIWCIckkSzdNgaiv5weLL044noMK
 WTBozpO7VyBGMuUwcx+ptSL1uuuW8R205CHWzHVxd2NoN+1jTl3N91RRdHgOmn3c8AgX
 U2yyYgpdJKKZN5QG73N08eX6h1vN85AK0yHynTu8lXD3M/F69+wl+Jy9ZlYTa3M09NwM
 VnCQ==
X-Gm-Message-State: AGi0PubaCc/r5utBaD3XWN4AT/LQpbQiUeuo/dU/vlgkys34s4c6/p9u
 GJSjUDvJD1DvS8JV3ocguft+ziMLN+fP3qt8ZaWTCYJESnY=
X-Google-Smtp-Source: APiQypI6+4pdHU4PmtocPkG/A2zUax4f83JuUwL0dPHpwUyCRBFgOUNMB6nG3dkbWwQU1oYRf4IPsQgcXmTlIwUGDvc=
X-Received: by 2002:a5d:9ccc:: with SMTP id w12mr5938471iow.14.1586553847776; 
 Fri, 10 Apr 2020 14:24:07 -0700 (PDT)
MIME-Version: 1.0
References: <7ec62c210cb8f78808f8225ebf33a60dee76a2ca.camel@flyn.org>
 <CAOdf3goPWgbrF7+db0OQfkM7gxuyieeCPRV=mwh4E+nC2hBpyQ@mail.gmail.com>
In-Reply-To: <CAOdf3goPWgbrF7+db0OQfkM7gxuyieeCPRV=mwh4E+nC2hBpyQ@mail.gmail.com>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Fri, 10 Apr 2020 17:23:56 -0400
Message-ID: <CAOdf3gomCM5pitdYuGmUtn0ERMAHQcqDhBqY1WyFpwv5We4rvQ@mail.gmail.com>
To: "W. Michael Petullo" <mike@flyn.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_142409_030705_8E257187 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Java compiler
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

TGUgdmVuLiAxMCBhdnIuIDIwMjAgw6AgMTc6MDksIEV0aWVubmUgQ2hhbXBldGllcgo8Y2hhbXBl
dGllci5ldGllbm5lQGdtYWlsLmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGkgTWljaGFlbCwKPgo+IExl
IHZlbi4gMTAgYXZyLiAyMDIwIMOgIDE2OjQ4LCBXLiBNaWNoYWVsIFBldHVsbG8gPG1pa2VAZmx5
bi5vcmc+IGEgw6ljcml0IDoKPiA+Cj4gPiBIYXMgYW55b25lIHRyaWVkIHRvIGJ1aWxkIGEgSmF2
YSBjb21waWxlciBwYWNrYWdlIGZvciBPcGVuV3J0PyBJIGFtCj4gPiBpbnZlc3RpZ2F0aW5nIGRv
aW5nIHRoaXMuIEkgc2VlIHRoZSBsYW5nL2phbXZtIEpWTSwgYnV0IG5vIGNvbXBpbGVyCj4gPiBh
a2luIHRvIGRldmVsL2djYyBvciBsYW5nL2dvbGFuZy4gSSBoYXZlIHBhY2thZ2VkIGEgbnVtYmVy
IG9mIHRoaW5ncywKPiA+IGJ1dCBJIHN1c3BlY3QgdGhpcyB3aWxsIGJlIGEgYml0IG1vcmUgb2Yg
YSBjaGFsbGVuZ2UuIEhlbmNlIG15IHF1ZXN0aW9uCj4gPiBoZXJlLgo+Cj4gRG8geW91IHdhbnQg
dGhlIEpESyBvbiB0aGUgcm91dGVyID8gb3IgdGhlIEpESyBpbiB0aGUgdG9vbGNoYWluIGFuZAo+
ICJqdXN0IiB0aGUgSlJFIG9uIHRoZSByb3V0ZXIgPwo+IEZvciBib3RoIEpESyBhbmQgSlJFIEkg
ZG9uJ3Qga25vdyB3aGF0IGFyY2hpdGVjdHVyZSBhcmUgb2ZmaWNpYWxseQo+IHN1cHBvcnRlZCwg
YnV0IHRoYXQgd291bGQgYmUgdGhlIGZpcnN0IHRoaW5rIHRvIGNoZWNrLCBiZWNhdXNlCj4gZGVi
dWdnaW5nIGEgSklUIGNvbXBpbGVyIG1pZ2h0IHJlcXVpcmUgc29tZSB3b3JrIDpQCgpIZXJlIGEg
Yml0IG9sZCBidXQgZ29vZCBwcmVzZW50YXRpb24gb2YgamF2YSBob3RzcG90IGRlYnVnZ2luZyBm
dW4KaHR0cHM6Ly9hcmNoaXZlLmZvc2RlbS5vcmcvMjAxNi9zY2hlZHVsZS9ldmVudC9odW50aW5n
X3RoZV9idWdfZnJvbV9oZWxsLwoKPiBHb29kIGx1Y2shCj4KPiA+Cj4gPiBUaGFuayB5b3UhCj4g
Pgo+ID4gLS0KPiA+IE1pa2UKPiA+Cj4gPiA6d3EKPiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IG9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gPiBodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
