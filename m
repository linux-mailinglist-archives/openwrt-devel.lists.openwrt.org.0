Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7421A0CC1
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 13:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SuS1ST4laqkFqzfy4rAiz+2Ziubezl836MaSRZKGQtk=; b=pHb/fJWHh3Tt6P
	WAN3cDzhsnBznFubHggGm8qn8X024zMIJAgQ9h1TawHykMDrsBPqk/FnMbHTQW7kO6ErbChNM1zB9
	IzQveqrf/LsfperxRr8UcG2UJtNi8qmpyANBSr+jV9FKMAlFYEvPN88Nx4g3iGOKhnZmQE8bkrI6e
	7JcBGIBS5dih75J/lE32eyskdAS0JzbPn3yTm14THZQlz7gUtDLCpKR4LNuDGyItzlymmDH1+8FpF
	wVps1XS3Owh99H8M/HfPoBV+4opqvBB+7DNhxmdNwgOofm+T6e7mHsoXrts+BSwV0wJN93+BRoeYD
	B4qaRX+5Y07l+HEZhTmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmHx-0000u3-6C; Tue, 07 Apr 2020 11:21:05 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmHq-0000t1-K3
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 11:21:00 +0000
Received: by mail-qt1-x844.google.com with SMTP id i3so2287874qtv.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 04:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZTbOekj1e2qQyppttIgAOIgoM9vur+b1PpDQFjT7Yuk=;
 b=WeUHJ4EJ672LFxPYSVg1kLbwfPaHELopl+x+4vXwAQ2CnzXrSmarG6B4q+VVmehIGd
 laC33NSHmKlg/ABaZfZ+EubG9GeqafLdtFHNxIhztKVrY+k6SyDuGMby5avFORHIp3lT
 3dQvCX69ZPoG7hXJawFLNqa31JtsIO2ZXyuwN5xTv7mnqaZpq9vAZbuFeqfTXhlQCJvJ
 dfMRMnJAgx5GpBu77T8uRz0T/htJkkVZl04uFazmgvQb7b/SpuNtPnZd54+SkRuPz5Du
 7Snl1sIafcqqGt1NV7yhf22GVDQ9Bp5zyKVw74q3nLdSBiO2vxO/BNhPpyoWsgfKBLKz
 xzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZTbOekj1e2qQyppttIgAOIgoM9vur+b1PpDQFjT7Yuk=;
 b=W6G9qrCv+1lIs98zqH+vqDQ1Yz58wAs57p9SFBVsHmRSyowfn+ho9q/mHMezsyYeiR
 ncfTt7RYNG/x9GaMhBR1m2gzF56zgTSyhEjh75zrGbHIp5uVs9IkeKKtwNPqEPZ+KXs8
 xTS2FMVd0o0ByEqlYpbLrYr+TfyGXkMnklymoKSoYGlORxT4Epy/p+My3O8JLOzc+5Z1
 3G66sGKILrmTTCTaC0rSSlIYDxeSKcfjx5utBZViVIjynPtuhLr0vH4BDJJdnoKjIHSY
 JVsCU56jEYlQbRelpVs75KxkgOxt9H1zsnLAWfu/0/1nAM5OG0Ia/V+qaeODV5gZdV//
 Dbjg==
X-Gm-Message-State: AGi0PuYtLaBuX7S1hX8RkbVMdS1EqV0C4RwaBXLwG4EjSZ/utVvOLjgc
 3hoeFhqJoRpj46i3xFouZuUZBMBY0y/eE+DVj1CiiYBmFdA=
X-Google-Smtp-Source: APiQypIPZ/3HzASFFW2JrZcmmmUkX1OVR+3Hjj2hQ88iFRrf1lGdxaZaRokdnnpIW7M+9IQ8Du6uh1+wiEwW6ChKgxw=
X-Received: by 2002:ac8:480d:: with SMTP id g13mr1729022qtq.29.1586258457168; 
 Tue, 07 Apr 2020 04:20:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200406201036.19144-1-cotequeiroz@gmail.com>
 <20200407081921.GA39350@meh.true.cz>
In-Reply-To: <20200407081921.GA39350@meh.true.cz>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Tue, 7 Apr 2020 08:20:44 -0300
Message-ID: <CAPxccB1k0GnOg1f45ZciHYxbM94hSi=NPNZnqwsQojTuYFCydA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_042058_658612_050E8702 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 0/6] build: update scritps/config to
 kconfig-v5.6
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
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCBBcHIgNywgMjAyMCBhdCA1OjE5IEFNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+Cj4gRW5lYXMgVSBkZSBRdWVpcm96IDxjb3RlcXVlaXJvekBnbWFpbC5jb20+
IFsyMDIwLTA0LTA2IDE3OjEwOjMwXToKPgo+IEhpLAo+Cj4gPiBUTERSOiBZb3UgY2FuJ3QgcmV2
aWV3IHRoaXMgYnkgb25seSBsb29raW5nIGF0IHRoZSBwYXRjaGVzLgo+Cj4gSnVzdCB0cmllZCB0
byBidWlsZFsxXSB0ZXN0IGl0IG9uIHg4Ni82NCBzdW54aS9hNTMgaW14NiBpcHE0MHh4IGFuZCBp
dCBmYWlscwo+IHRvIGJ1aWxkOgo+Cj4gIG1ha2UgLXMgLUMgc2NyaXB0cy9jb25maWcgY29uZiBD
Qz1jYzogYnVpbGQgZmFpbGVkLgo+Cj4gMS4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53
cnQvcGlwZWxpbmVzLzEzMzU0MzAzNAo+Cj4gLS0geW5lenoKClRoYW5rcyBmb3IgdHJ5aW5nIHRv
IHRlc3QgdGhpcy4KCkknbSBpbiB0aGUgZGFyayBoZXJlIHdpdGggZXhhY3RseSB3aGF0IHdlbnQg
d3JvbmcsIGJ1dCBJJ3ZlIGNhdWdodCBhbgpvdmVyc2lnaHQgb24gbXkgcGFydDogTGludXggbm93
IHJlcXVpcmVzIGZsZXggJiBiaXNvbiB0byBidWlsZCBmaWxlcwp0aGF0IGl0IHVzZWQgdG8gc2hp
cCBwcmVidWlsdC4gIEkgY2FuIGVpdGhlciByZXN0b3JlIHRoZSBwcmV2aW91cwpiZWhhdmlvciwg
b3Igd2UgY2FuIHJlcXVpcmUgdGhlbSBhcyB3ZWxsLCBhbmQgdGhlbiBJJ2xsIGFkZCBhIGNoZWNr
CmZvciB0aGVtLS1hbmQgbGF0ZXIgcGVyaGFwcyByZW1vdmUgdGhlbSBmcm9tIHRvb2xzLz8gIFdo
YXQgZG8geW91CnRoaW5rPwoKQlRXLCBoZXJlJ3MgdGhlIG91dHB1dCBvZiB0aGF0IG1ha2Ugc3Vi
Y29tbWFuZCAgaWYgIHlvdSB0YWtlIG91dCAnLXMnCmluIGluY2x1ZGUvdG9wbGV2ZWwubWs6MTA3
OgpjYyAtTzIgICAtYyAtbyBjb25mLm8gY29uZi5jCmNjIC1PMiAgIC1jIC1vIGNvbmZkYXRhLm8g
Y29uZmRhdGEuYwpjYyAtTzIgICAtYyAtbyBleHByLm8gZXhwci5jCmJpc29uIC1sIC1kIC1iIHBh
cnNlciBwYXJzZXIueQpmbGV4IC1MIC1vbGV4ZXIubGV4LmMgbGV4ZXIubApjYyAtTzIgLUkgLi8u
ICAgLWMgLW8gbGV4ZXIubGV4Lm8gbGV4ZXIubGV4LmMKY2MgLU8yIC1JIC4vLiAgIC1jIC1vIHBh
cnNlci50YWIubyBwYXJzZXIudGFiLmMKY2MgLU8yICAgLWMgLW8gcHJlcHJvY2Vzcy5vIHByZXBy
b2Nlc3MuYwpjYyAtTzIgICAtYyAtbyBzeW1ib2wubyBzeW1ib2wuYwpjYyAtTzIgICAtYyAtbyB1
dGlsLm8gdXRpbC5jCmNjICAgY29uZi5vIGNvbmZkYXRhLm8gZXhwci5vIGxleGVyLmxleC5vIHBh
cnNlci50YWIubyBwcmVwcm9jZXNzLm8Kc3ltYm9sLm8gdXRpbC5vICAgLW8gY29uZgpybSBsZXhl
ci5sZXguYwoKVGhhdCdzIHdoeSBJIGFzc3VtZSBpdCdzIG1pc3NpbmcgYmlzb24gJiBmbGV4LgoK
RW5lYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
