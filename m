Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AEE10F94E
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 08:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H5XsgrkvKYouuH5/gp5My1ec6saGYEsakDIaDqd4ME=; b=dkXi8+cMwqUSeA
	M1CHvIdIuwTrfsTjj6px6yr0mh947vAfGZIV+mlcHW0poxcrRJUHB3mRNl4sVPzRzp+roLqtmkvk6
	kL54q4kd3H0Hz5ndswgD5mhAKIMmTyJ5PmCG2zc09tcumK4aZoK3kbp8rwsjd5YemgXYwj5wv2b6V
	4OhHhlz23vAmL8x+7PnxMU7j/7QkUtegIag8QHbc6iOYJ8JM4DVQJYoinleiVxjRvz+ieBTayM1Kd
	Adt8PkJx9tb/Ay1LklIuYtzeI9qX1RLeCbun/41MY9iiT57PZTx1qLahVCZVJUelIJoWy1N8vuO2I
	Ud01iWwT6kZvb4FUXTrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2xj-0003Y3-7P; Tue, 03 Dec 2019 07:51:11 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2xQ-0003QX-C0
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 07:50:54 +0000
Received: by mail-qv1-xf42.google.com with SMTP id t9so1082207qvh.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Dec 2019 23:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XqPw4P0BI9s2zRh8S/5+A1CrWpvx6zTWeWJQDOjafqM=;
 b=skE35fDWOWu3ewqWcP6pzlyCtpvkwWTI6s4+yrglVRODq6Yj3+82/QR5YcsEZNo+SY
 3X3j7T5RdPTs22lgV4AQ0tFatB14SQydZUQtRCn20OKjxuSnEH7RyGcJ4GNT1Qxs4qch
 UMHuXKxXWHRxy/PxzWSyb40ry3efj+oCabmtWnnWlBkaLoI47xETMrU+uqoaz7KiKy09
 osMwz4c4Sc2RlOHmDCnZw4437fvoEX00PRvBYULolkRbtG4dBvWIv9gFFdTF78CLDp5B
 fIiNA9Zc17I8PnoSn3AmAvtPPrTWFSnfg8R8tPSzdZouuSM9U7mwuR7OrFx/gPkjFyLu
 O7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XqPw4P0BI9s2zRh8S/5+A1CrWpvx6zTWeWJQDOjafqM=;
 b=ljX7oED7vCo16IX38IPsjML2c74uNzIGLuIqGx58KiIrk68X0i09VAnS+hbQxXgXol
 0upr3bh6KyJUvpMsCEusfEr/f3bGUSbG33h/9MVFgdCpyUDihHJ9ROjHwqaxTGEODMLM
 fB4xhKIqrBkboWMsOOdG8oZZpjkGOW98Px2IUDGuiFKbiM4lTgxjWascz5EhAa9Bg5TO
 VT1lYbQsy5KVtVGaD17CSBsjEZ0fvzo0g3QzZhMML3f2QP26T1eQ94hHZnSBr9k4FtPp
 64xK3zDGvFNUtXjZtbL3mcDJf4LiY7ZEEL96nNOGCtf/PgpA2nVY7g1/ChoazayYHGMZ
 Qoqg==
X-Gm-Message-State: APjAAAUbC7tW5TSv3Kq4YTautzpqCP4uppJ9zbZfkdWqDOBp3XPOO1hA
 XrCxkq39JEzRcwe55kXHa/g3rZaLuoU8OxZGossbLGK1sYlvSg==
X-Google-Smtp-Source: APXvYqwd3rSbWnXmN5HjRYuu1rpxSS/KzbTseKX6BcAqUeLEbVQqVA7PRJlEnz8rnOHLjByEsKRpPv9BPNCDreqanLM=
X-Received: by 2002:a0c:893d:: with SMTP id 58mr3794988qvp.4.1575359450246;
 Mon, 02 Dec 2019 23:50:50 -0800 (PST)
MIME-Version: 1.0
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
 <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
 <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
In-Reply-To: <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Tue, 3 Dec 2019 08:50:39 +0100
Message-ID: <CAJLcKsHhA3_qaWN2bHv8tAJCg5Ymdj6rfRLN5Gb89AqDzn6hYA@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_235052_449589_ACB89606 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH netifd] interface: warn if ip6hint is
 truncated
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBGcmksIE5vdiAyOSwgMjAxOSBhdCA5OjI5IFBNIFV3ZSBLbGVpbmUtS8O2bmlnIDx1
d2VAa2xlaW5lLWtvZW5pZy5vcmc+IHdyb3RlOgo+Cj4gT24gMTEvMjkvMTkgODo1MCBQTSwgSGFu
cyBEZWRlY2tlciB3cm90ZToKPiA+IE9uIFdlZCwgTm92IDIwLCAyMDE5IGF0IDc6MTEgUE0gVXdl
IEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBX
aGVuIGZvciBleGFtcGxlIGEgLzYwIGlzIGFzc2lnbmVkIHRvIGEgbmV0d29yayB0aGUgbGFzdCA0
IGJpdHMgb2YgdGhlCj4gPj4gaXA2aGludCBhcmUgdW51c2VkLiBFbWl0IGEgd2FybmluZyBpZiBh
bnkgb2YgdGhlc2UgdW51c2VkIGJpdHMgaXMgc2V0IGFzCj4gPj4gaXQgaW5kaWNhdGVzIHRoYXQg
c29tZW9uZSBkaWRuJ3QgdW5kZXJzdGFuZCBob3cgdGhlIGhpbnQgaXMgdXNlZC4gKEFzIEkKPiA+
PiBkaWQgZWFybGllciB0b2RheSByZXN1bHRpbmcgaW4gc3BlbmRpbmcgc29tZSB0aW1lIHVuZGVy
c3RhbmRpbmcgdGhlCj4gPj4gY29kZS4pCj4gPiBQYXRjaCBhcHBsaWVkIHdpdGggc29tZSBtaW5v
ciB0d2Vha3MKPiA+IChodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1wcm9qZWN0L25ldGlmZC5n
aXQ7YT1jb21taXQ7aD1lNDViMTQwODI4NGMwNTk4NGIzOGE5MTBhMWYwYTA3ZDZjNzYxMzk3KTsK
Pgo+IFRoZSB1cGRhdGVkIHdhcm5pbmcgbWVzc2FnZSBpcyBmaW5lLgo+Cj4gPiBJIGFkZGVkIHlv
dXIgU29CIGFzIHRoaXMgd2FzIG1pc3NpbmcgaW4gdGhlIHBhdGNoCj4KPiBJIHdvbmRlciB3aGF0
IHRoZSBzaWduaWZpY2FuY2Ugb2YgdGhlIFNvQiBpcyBnaXZlbiB0aGF0IGEpIGl0J3Mgbm90Cj4g
ZG9jdW1lbnRlZCAoYXQgbGVhc3QgaW4gdGhlIG5ldGlmZCBzb3VyY2VzKSBhbmQgYikgaXQgc2Vl
bXMgdG8gYmUgb2sgdG8KPiAiZmFrZSIgc29tZW9uZSBlbHNlJ3MgU29CIGFuZCBjKSB0aGVyZSBh
cmUgc2V2ZXJhbCBjb21taXRzIGluIHRoZSBuZXdlcgo+IGhpc3Rvcnkgb2YgbmV0aWZkIHRoYXQg
ZG9uJ3QgaGF2ZSBhIFNvQiBvZiBlaXRoZXIgQXV0aG9yIG9yIENvbW1pdHRlcgo+IChvciBib3Ro
KS4KRm9yIGRldGFpbHMgd2h5IGEgU29CIGlzIHJlcXVpcmVkOyBzZWUKaHR0cHM6Ly9vcGVud3J0
Lm9yZy9zdWJtaXR0aW5nLXBhdGNoZXMjc2lnbl95b3VyX3dvcmsuCklmIHRoZXJlJ3JlIGFueSBj
b21taXRzIGluIHRoZSBuZXRpZmQgcmVwbyB3aGljaCBkb24ndCBoYXZlIGEgU29CIHRoaXMKbXVz
dCByYXRoZXIgc3RheSBhbiBleGNlcHRpb24gdGhhbiBiZWNvbWluZyBhIGdlbmVyYWwgcnVsZS4K
CkhhbnMKPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
