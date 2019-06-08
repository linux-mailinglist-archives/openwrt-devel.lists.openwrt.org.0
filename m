Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6C039BB0
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 10:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftc6hKU3Zk52Xg+Kn8+n6fqwEQUyoAzc/8pSbqw2xuA=; b=roS7izUCMeXSE/
	1YLGcx77OsuePFYW5aDAZb4QxaexgDTW0c4u4lPOQM5En/Nwvaqsxv0olFn8MQxrHelJT5QB11bSP
	7JT2du4V/TsKARLAJRxG7uJ8oidtAVXT3LPN0BcS7AzieBkGBopLJK1LKC+t/GvjYTCmQD4gxL9BL
	ybdWGOKgKVEVSzQ6/5jzHCJX8JwsKFSWqXRbOVFC3zoZlPK+YsSbAgIFmEAA+VHhClUR9oFdZkpgO
	KQnrAGJqTaI8zH1Wqjz26vFXwZ6hGjA+kNNjpFxqH+5oaZoYtRrjMXFXyiXJkzavy6CCKvnbouqWv
	eBl+3qkIanKxllkcR/Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZWQc-0006xX-U8; Sat, 08 Jun 2019 08:10:19 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZWQN-00060g-Fh
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 08:10:05 +0000
Received: by mail-qt1-x843.google.com with SMTP id n11so2938759qtl.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 01:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ms1CuEHkd2y9aCJwSHr+CMhfSuY6PlmVmV9/LpTnXLc=;
 b=tlvv1T3hobUVuNAwTMD6JNET2O+ZBxRKOAY/7p6XZIvNXOAIBEmor71U30L13VZKTk
 t7IuiZvTuqv25Gny1uRpeHGx9j1Hc2Y5U77Q1r18CkOrrFjPljPLEOJTnZ/NmgxW4rds
 Jgkyy0eMNi/DcQutc17EeM09cJCEVR+Oz6OMkd2pkGZBDBQ3+mlufcj/aiv3qfSSX1qm
 lEiAxY7ttXxqtgQhz+uX9lw0u4rvIj5mjSfB5ujcymRAEkPU3p4fhC5qH0sTLO/qtR8u
 pz7CK+MDLoImvUITjBUsSBuGd3cbg+9xb8msg7mxXUFO0yvsMdcDEnvgb6LCGlub2sOo
 s3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ms1CuEHkd2y9aCJwSHr+CMhfSuY6PlmVmV9/LpTnXLc=;
 b=XT2lyHhYyjos7EfVulninLD1ipUhsq2ROoORpdc0nYAiA1O1kGDg6TS7QRpbWlbErt
 gGft9ViHyZVAA7PO7tdL9cYJFaU5UXKVveYcBUys7hRO7pfp+N5dxrAwzuGUYkFDSYnL
 0hAynNDVtyJCud9GIzMtJMpxmwlvd4lIVGoiZ3LFEl+TjjKZl9JLFIROYdaoDqsiEmwy
 AxM2IQn1sRU8H2FtIw6xb2vB1eEvXTh6UhM1YOUO06AIuPQJvpQuM+yUHlSZItDlzAgK
 9NWRtJ4rcBdQouNfqpvs4v45h5NC5sRKGhRctz/bXXdS4V6ZCLdEJ8Lhkf4llnJHi2Up
 UkiA==
X-Gm-Message-State: APjAAAV0Mjd1v+3ewp4WRazDXfFbHOIrLJtivJYFzRyInxz9QjROk5kQ
 9nPraAsNL/cRDlTnCRzZaq7MaK+cneLrJPOuk50=
X-Google-Smtp-Source: APXvYqx/heZB43ZQOVIFEHX47G7b1lX48FOv0NKJAZPQzlUNWCLyyMKdz85FxF9r01JhfkLolWWrEitsXs94jMMlFiU=
X-Received: by 2002:a0c:b5ad:: with SMTP id g45mr48196262qve.231.1559981399008; 
 Sat, 08 Jun 2019 01:09:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190606224510.22083-1-avalentin@marcant.net>
 <20190606224510.22083-2-avalentin@marcant.net>
In-Reply-To: <20190606224510.22083-2-avalentin@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 8 Jun 2019 10:09:47 +0200
Message-ID: <CAJLcKsG9Dvh1SKwc3_4svBSOV-+1tZnc4xQfNBuAzQ=JVhprBg@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Valentin?= <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_011003_580276_8BCF94A4 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/3] kernel/netsupport: add xfrmi
 interface support
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBKdW4gNywgMjAxOSBhdCAxMjo0NiBBTSBBbmRyw6kgVmFsZW50aW4gPGF2YWxlbnRp
bkBtYXJjYW50Lm5ldD4gd3JvdGU6Cj4KPiBBZGQgc3VwcG9ydCBmb3IgeGZybSBpbnRlcmZhY2Vz
IGluIGtlcm5lbC4gWEZSTSBpbnRlcmZhY2VzIGFyZSB1c2VkIGJ5Cj4gdGhlIElQc2VjIHN0YWNr
IGZvciB0dW5uZWxpbmcuCj4gWEZSTSBpbnRlcmZhY2VzIGFyZSBhdmFpbGFibGUgc2luY2UgbGlu
dXggNC4xOS4KPgo+IC0tLQo+ICBwYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL25ldHN1cHBv
cnQubWsgfCAxNCArKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9u
cygrKQo+Cj4gZGlmZiAtLWdpdCBhL3BhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvbmV0c3Vw
cG9ydC5tayBiL3BhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvbmV0c3VwcG9ydC5tawo+IGlu
ZGV4IDFiNjI0NzY0M2YuLjM4NWMxYzY1ZWMgMTAwNjQ0Cj4gLS0tIGEvcGFja2FnZS9rZXJuZWwv
bGludXgvbW9kdWxlcy9uZXRzdXBwb3J0Lm1rCj4gKysrIGIvcGFja2FnZS9rZXJuZWwvbGludXgv
bW9kdWxlcy9uZXRzdXBwb3J0Lm1rCj4gQEAgLTM4MCw2ICszODAsMjIgQEAgZW5kZWYKPgo+ICAk
KGV2YWwgJChjYWxsIEtlcm5lbFBhY2thZ2UsaXA2LXZ0aSkpCj4KPiArCj4gK2RlZmluZSBLZXJu
ZWxQYWNrYWdlL3hmcm0taW50ZXJmYWNlCj4gKyAgU1VCTUVOVTo9JChORVRXT1JLX1NVUFBPUlRf
TUVOVSkKPiArICBUSVRMRTo9SVBzZWMgWEZSTSBJbnRlcmZhY2UKPiArICBERVBFTkRTOj0ra21v
ZC1pcHNlYzQgK2ttb2QtaXBzZWM2IEBMSU5VWF80XzE5CkFzIHlvdSBtZW50aW9uIHRoaXMgaXMg
c3VwcG9ydGVkIHNpbmNlIDQuMTk7IGl0J3MgbW9yZSBmdXR1cmUgcHJvb2YKdXNpbmcgQCFMSU5V
WF80XzE0CgpIYW5zCj4gKyAgS0NPTkZJRzo9Q09ORklHX1hGUk1fSU5URVJGQUNFCj4gKyAgRklM
RVM6PSQoTElOVVhfRElSKS9uZXQveGZybS94ZnJtX2ludGVyZmFjZS5rbwo+ICsgIEFVVE9MT0FE
Oj0kKGNhbGwgQXV0b0xvYWQsMzMseGZybV9pbnRlcmZhY2UpCj4gK2VuZGVmCj4gKwo+ICtkZWZp
bmUgS2VybmVsUGFja2FnZS94ZnJtLWludGVyZmFjZS9kZXNjcmlwdGlvbgo+ICsgS2VybmVsIG1v
ZHVsZSBmb3IgWEZSTSBpbnRlcmZhY2Ugc3VwcG9ydAo+ICtlbmRlZgo+ICsKPiArJChldmFsICQo
Y2FsbCBLZXJuZWxQYWNrYWdlLHhmcm0taW50ZXJmYWNlKSkKPiArCj4KPiAgZGVmaW5lIEtlcm5l
bFBhY2thZ2UvaXB0dW5uZWw0Cj4gICAgU1VCTUVOVTo9JChORVRXT1JLX1NVUFBPUlRfTUVOVSkK
PiAtLQo+IDIuMTEuMAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
