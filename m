Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282C210DA3C
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 Nov 2019 20:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0gz5NPyiAHLF5FsfPUBzYLD5vykDsgYbPgm8g4gIKM=; b=Q6MukrOvhQ8I/v
	Gov5zBMbpeFUQth23vF94+/LNpMQzYQSUcVs5s0rkdEFdGOK3ICjU2N+Ee+kINfzeuAjkdgwpCUYC
	FdNpKpVVlH4mZPm/q/6tHTeGt3bXfl/D6FenC9hTk3WidtEtwASfM+TBtnapatv2ocx2WxpLS4bSg
	AJnOjnShTn3gJXl33etouFbWK5BKTffVCilHRpAlMPR3ht7BDFEhi4Cvm0Wmf7u+1eBCLXFSPfyxB
	i4zALqIYLpOKbcEP0rAd19/vvb4/v7F6McSFH7GAbbC4vdGHQVKtw3fsWG56rtto7+hkAgl01S3+j
	qchLMkUs2IO6YHl/ePrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamHc-00058Q-E5; Fri, 29 Nov 2019 19:50:28 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamHT-000583-Ob
 for openwrt-devel@lists.openwrt.org; Fri, 29 Nov 2019 19:50:21 +0000
Received: by mail-qk1-x742.google.com with SMTP id v23so18689135qkg.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 Nov 2019 11:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uuCc22wNW7blqvOZ03k3JGJzTwBE+9z26BHCJ1rNJQU=;
 b=QrqHXc4P9b5D/pwbi1MFqauR+i4nWOqfFL6IdtrC7fLtkCR/3SLBR996xven48tdz0
 +31MysgHPwXf5qFG5o4zchr1qkBBbJ9m0cPC6sC1nA8AcZcZdml7a22wcAygbA2xy10r
 plDA1DalNUfuimz7vLyWA+NNJCqLZ6UbJcCpRjfUZbckX9nWqnViCgy4UpxqqFYuAMgn
 vA9b7DdumVwTKC1uph0Hw97oUopZh+gonXwa9p/xJpCYfvVvS2mFIxcUWOPl0RBk8NQg
 iwgjUcw3Wl+J1UutN69GnMGbkGwFXPMVQWlFrOdF8Fvgail6eJI0xAhTPvk96wbcRNtx
 KGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uuCc22wNW7blqvOZ03k3JGJzTwBE+9z26BHCJ1rNJQU=;
 b=i/RRJRsnpkyiy00rWy8wmHan+JqXkAyXmGyEpnzoEv1wiGKToMKH9ygfiKnOaSL++P
 wVyVH/kKM+Eptu9LYZYsGutkM5/4iEO+PVT0vla92wljhluxKaAkBAU0A98NEzT1TdiK
 IucexBZO1HApfrNA7VEviTxGBqMZsGeAlcSUkX3K35eBiNW3EoX6nqSZ13iQnhDzbC5G
 smf38AzBK+3vuRO1lAy5SxKT0sR3yoXMPR3TX4J1vZ5x4LR6oqzLLpk+hZcGSIumJOAY
 +r377eJR0cVgxUGv0A7FaN7xbFexYVVl15SL1s2QfhZPxJMo0hLry6q8ByH9ZNbjal0T
 qh5g==
X-Gm-Message-State: APjAAAVLNH6ooaJvhAnAbgn1aX/GavVBBen1PlzH+PiuvyeiKgEMuX95
 TphJ50S1DkHz2Pwmfza99U94U4VGVEn3RjmXdoSK/WAw8TTlrA==
X-Google-Smtp-Source: APXvYqzJ7MicyhKfWdURfMNpWYRYleAYpEzfDV/+7iyV84pTai7SqfgoAjIBjmmTwBqNIt+uIBcCIZPJ5T8Nu+psUH4=
X-Received: by 2002:a37:8a05:: with SMTP id m5mr16972571qkd.181.1575057017645; 
 Fri, 29 Nov 2019 11:50:17 -0800 (PST)
MIME-Version: 1.0
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
In-Reply-To: <20191120181131.2622-1-uwe@kleine-koenig.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Fri, 29 Nov 2019 20:50:06 +0100
Message-ID: <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_115019_807565_2E50C201 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gV2VkLCBOb3YgMjAsIDIwMTkgYXQgNzoxMSBQTSBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGts
ZWluZS1rb2VuaWcub3JnPiB3cm90ZToKPgo+IFdoZW4gZm9yIGV4YW1wbGUgYSAvNjAgaXMgYXNz
aWduZWQgdG8gYSBuZXR3b3JrIHRoZSBsYXN0IDQgYml0cyBvZiB0aGUKPiBpcDZoaW50IGFyZSB1
bnVzZWQuIEVtaXQgYSB3YXJuaW5nIGlmIGFueSBvZiB0aGVzZSB1bnVzZWQgYml0cyBpcyBzZXQg
YXMKPiBpdCBpbmRpY2F0ZXMgdGhhdCBzb21lb25lIGRpZG4ndCB1bmRlcnN0YW5kIGhvdyB0aGUg
aGludCBpcyB1c2VkLiAoQXMgSQo+IGRpZCBlYXJsaWVyIHRvZGF5IHJlc3VsdGluZyBpbiBzcGVu
ZGluZyBzb21lIHRpbWUgdW5kZXJzdGFuZGluZyB0aGUKPiBjb2RlLikKUGF0Y2ggYXBwbGllZCB3
aXRoIHNvbWUgbWlub3IgdHdlYWtzCihodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1wcm9qZWN0
L25ldGlmZC5naXQ7YT1jb21taXQ7aD1lNDViMTQwODI4NGMwNTk4NGIzOGE5MTBhMWYwYTA3ZDZj
NzYxMzk3KTsKSSBhZGRlZCB5b3VyIFNvQiBhcyB0aGlzIHdhcyBtaXNzaW5nIGluIHRoZSBwYXRj
aAoKSGFucwo+IC0tLQo+ICBpbnRlcmZhY2UuYyB8IDEyICsrKysrKysrKy0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2ludGVyZmFjZS5jIGIvaW50ZXJmYWNlLmMKPiBpbmRleCAwMjhkYzZjY2Q1ZTUuLjgzOWRlMGJi
ODhhZCAxMDA2NDQKPiAtLS0gYS9pbnRlcmZhY2UuYwo+ICsrKyBiL2ludGVyZmFjZS5jCj4gQEAg
LTg2Myw5ICs4NjMsMTUgQEAgaW50ZXJmYWNlX2FsbG9jKGNvbnN0IGNoYXIgKm5hbWUsIHN0cnVj
dCBibG9iX2F0dHIgKmNvbmZpZywgYm9vbCBkeW5hbWljKQo+ICAgICAgICAgfQo+Cj4gICAgICAg
ICBpZmFjZS0+YXNzaWdubWVudF9oaW50ID0gLTE7Cj4gLSAgICAgICBpZiAoKGN1ciA9IHRiW0lG
QUNFX0FUVFJfSVA2SElOVF0pKQo+IC0gICAgICAgICAgICAgICBpZmFjZS0+YXNzaWdubWVudF9o
aW50ID0gc3RydG9sKGJsb2Jtc2dfZ2V0X3N0cmluZyhjdXIpLCBOVUxMLCAxNikgJgo+IC0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfigoMSA8PCAoNjQgLSBpZmFjZS0+YXNzaWdubWVu
dF9sZW5ndGgpKSAtIDEpOwo+ICsgICAgICAgaWYgKChjdXIgPSB0YltJRkFDRV9BVFRSX0lQNkhJ
TlRdKSkgewo+ICsgICAgICAgICAgICAgICBpbnQzMl90IGFzc2lnbm1lbnRfaGludCA9IHN0cnRv
bChibG9ibXNnX2dldF9zdHJpbmcoY3VyKSwgTlVMTCwgMTYpOwo+ICsKPiArICAgICAgICAgICAg
ICAgaWZhY2UtPmFzc2lnbm1lbnRfaGludCA9IGFzc2lnbm1lbnRfaGludCAmIH4oKDEgPDwgKDY0
IC0gaWZhY2UtPmFzc2lnbm1lbnRfbGVuZ3RoKSkgLSAxKTsKPiArCj4gKyAgICAgICAgICAgICAg
IGlmIChpZmFjZS0+YXNzaWdubWVudF9oaW50ICE9IGFzc2lnbm1lbnRfaGludCkKPiArICAgICAg
ICAgICAgICAgICAgICAgICBuZXRpZmRfbG9nX21lc3NhZ2UoTF9XQVJOSU5HLCAiSWdub3Jpbmcg
c2V0IGJpdHMgb2YgYXNzaWdubWVudCBoaW50IGZvciBpbnRlcmZhY2UgJyVzJ1xuIiwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWZhY2UtPm5hbWUpOwo+ICsg
ICAgICAgfQo+Cj4gICAgICAgICBpZiAoKGN1ciA9IHRiW0lGQUNFX0FUVFJfSVA2Q0xBU1NdKSkK
PiAgICAgICAgICAgICAgICAgaW50ZXJmYWNlX2FkZF9hc3NpZ25tZW50X2NsYXNzZXMoaWZhY2Us
IGN1cik7Cj4gLS0KPiAyLjI0LjAKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
