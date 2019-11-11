Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7ADF81DF
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 22:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmDQ+GT/yuv5v574tlPUTba2XwJlP6CHWB3/MvVsARM=; b=DRz8DgYhRrXtGv
	Tr+69D05qpHrcp5LWTakVEGHrMXowrr3TF15fy9vCixItV9loe4FMgYNLrFeKiX3qQNb9CWZw/HhF
	k4np9HT2MOn71Pyk1xrSKNA4ku0A7d9a2x/sKjVU0NqEZuoT4MNDYLvGZjMa9NDNxj1enUtIbn6Uv
	ijDWTttVPiT2pHAkFANiNNhM3G+iiKMbrqkfTPpb5dBaNF7KHEX7K4IWU6kH54mI6eRJvqrUxCpvU
	FXoCtAUud9yw9VZe3RdEl2uI25NffcN5iQz1bi4WcuQ72ULJQBQ9Ten6qKXv8HCRliVUmkZs3c0lz
	71zM5lGEKw21Pg8Tpptw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGtc-0007nZ-2f; Mon, 11 Nov 2019 21:06:48 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGtR-0007n5-KT
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 21:06:39 +0000
Received: by mail-il1-x143.google.com with SMTP id s75so13403003ilc.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 13:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=32mkM1VK+Am3lm7hQYi4rekXVM9buKWoLzm8Xy9HRIQ=;
 b=plC7htsLLGRJxiAGog5KgqIBlH+SSDu0mR1oWi9BMIerwiAeOkztfvKJCU3gIE7C5J
 Ll1gg+gd/APgkH39acg5k3MJbcbGsAHJH36vE9JwJJp6u/gg2j5scTdyrKRU9WsBrDJL
 Te81y19ZLBzEFyd5OBjitpn6Cy15JoJSiOhlHaaykcgRZ2GrrncWmbWf+oHqQxa72GwZ
 1pnuw9mgk/uahGdlCzW4wB+bXBIV5ZVQ/Q9bRvIuK8JZiWGcMOAQkbI7mJzhxFa6obdm
 fj8LY91o5hNGB8vs5JcwceKlp8ue/DeucxompD1jHznGx/w6b0BrHyQoagPVje/PBQf5
 qQfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=32mkM1VK+Am3lm7hQYi4rekXVM9buKWoLzm8Xy9HRIQ=;
 b=Re917nt8vQD5Su08O/j4IPEjfrsBB46x/seixByF7aeBFH7pwsGk/ektT32m09EfOb
 eUwv+qasNLJQNpUVJZyUwSKxLGpKUYwKcsxUu/VRyy9XHmCIXfleMiwQFjCt55NNivEX
 /WYtNbedr/EYPH4aFpbtwOv8qYvFWjZD/Y64BBtet92NlMlRbU+QkDneZasXoeaOl520
 nFJo4VSe6Hpchpo0LGzCt7E8QJ+KWqA5gsyw3pP/NUudjFPwR5NTm2AUeTZspYefK5mt
 c2zPpVG+yoYNQlM0Fh0kt5nAQUwNu3SDlO12MU5+TxAF3KyIwttODwkI8WyUCc8WcAwn
 im/w==
X-Gm-Message-State: APjAAAXRQi69rC41gchnrmCyWlb0JqbIlRBFMMM1EGs9Vvu63KWV4jW9
 ziLAkCj/OvUgdagqStFAI+d5nqVyvVLaiu2dNq0LXw==
X-Google-Smtp-Source: APXvYqz7jHK3YNtTcMHUmnkTAcmwn562hF5UmLzETyn+QgQ7o6ksP+tFd/fg5DT5M//2meJN/Z2KyzXvHJuz4sgviZM=
X-Received: by 2002:a92:660e:: with SMTP id a14mr32834338ilc.235.1573506396041; 
 Mon, 11 Nov 2019 13:06:36 -0800 (PST)
MIME-Version: 1.0
References: <CAOiHx=kDmjTAqgMW1W58-RUStCHvnHOwgM3s92Ooee3CZGSZGg@mail.gmail.com>
 <20191110090447.16563-1-ynezz@true.cz>
In-Reply-To: <20191110090447.16563-1-ynezz@true.cz>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Mon, 11 Nov 2019 13:06:24 -0800
Message-ID: <CAOdf3gpCUdRW7qNOTvOcvDAV4DKE=1ZKQXCDe7DJWhJWsqotMg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_130637_668427_D63BB795 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 maintainer-tools] patchwork-apply.sh:
 try to fix DMARC mangled patches
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

SGkgUGV0ciwgIm1haWxpbmcgbGlzdCBhZG1pbnMiLAoKTGUgZGltLiAxMCBub3YuIDIwMTkgw6Ag
MTA6MDUsIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IGEgw6ljcml0IDoKPgo+IEluIG9y
ZGVyIHRvIGF2b2lkIERNQVJDIHBsYWd1ZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2VzOgoKSSBzYXcg
dGhpcyBzb21lIGRheXMgYWdvOgpodHRwOi8vYXJjLXNwZWMub3JnLwpIYXZlbid0IGhhZCB0aW1l
IHRvIGxvb2sgYXQgaXQsIGJ1dCBpdCdzIHN1cHBvc2VkIHRvIGJlIGEgc29sdXRpb24gdG8KdGhl
IERNQVJDICsgbWFpbGluZyBsaXN0IG1lc3MKCkV0aWVubmUKCj4KPiAgODdmOTI5MjMwMGNmIGhv
c3RhcGQ6IGFkZCBJRUVFIDgwMi4xMWsgc3VwcG9ydAo+ICA0NTBkNDRhOGVhZDIgb3BlbnNzbDog
Y2hhbmdlIGRlZmF1bHRzOiBFTkdJTkU6b24sIE5QTjpvZmYsIG1pc2MKPiAgZWFiYzFkZGM0NTQx
IGJ1aWxkOiBIb25vdXIgTk9fQ09MT1IgaW4gaW5jbHVkZS9zY2FuLm1rCj4gIDNmYjQ1NTc2YWMx
NiBjcnlwdG9kZXYtbGludXg6IG1vdmUgZnJvbSBwYWNrYWdlcyBmZWVkCj4gIGE3MzI4M2RjMTBm
NyBrZXJuZWw6IG5mLW5hdGhlbHBlci1leHRyYSBkZXBlbmRzIG9uIGlwdC1yYXcKPiAgMDMxN2Zj
MzY1OGViIGxpYnBjYXA6IHBhdGNoIHRvIGFkZCBsaW1pdHMuaCB0byBwY2FwLXVzYi1saW51eC5j
Cj4gIDI2ZGJmNzlmNDkwNSBsaWJldmVudDI6IERvbid0IGJ1aWxkIHRlc3RzIGFuZCBzYW1wbGVz
Cj4gIGQ1OTEyNjA0MDcwMSBicmNtNjN4eDogaW5pdGlhbCBzdXBwb3J0IGZvciBTa3kgU1IxMDIg
cm91dGVyCj4gIDA5NGQ0OWNkZGY5MyBrZXJuZWw6IGJ1bXAgNC4xNCB0byA0LjE0LjUxCj4gIDI0
NzA1NWNiZmJmMSBpZ21wcHJveHk6IGJ1bXAgdG8gMC4yLjEKPiAgYzQ1MTQzNGI5NjNkIGNha2U6
IGJ1bXAgdG8gMjAxODA1MDQgYmFrZQo+ICAwODBmYjdhM2ZiYjYgaXByb3V0ZTI6IGltcG9ydCBs
YXRlc3QgY2FrZQo+ICBhZDVhZjM3Y2E3OTMgaXByb3V0ZTI6IGJhY2twb3J0IGpzb25fcHJpbnQt
Zml4LWhpZGRlbi02NC1iaXQtdHlwZS1wcm9tb3Rpb24KPiAgNzhmNDMwNTkzM2I5IGlmdG9wOiBi
dW1wIHRvIGxhdGVzdAo+ICA3NzgzZjMxMzU5Y2IgYmFzZS1maWxlczogbmFuZDogdXNlIENJX0tF
Uk5QQVJUIHdoZW5ldmVyIHRoZSBrZXJuZWwgdm9sdW1lIGlzIG5lZWRlZAo+Cj4gU2lnbmVkLW9m
Zi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiAtLS0KPiAgcGF0Y2h3b3JrLWFw
cGx5LnNoIHwgNyArKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9wYXRjaHdvcmstYXBwbHkuc2ggYi9wYXRjaHdvcmstYXBwbHkuc2gKPiBp
bmRleCA1NTA2YWRiZmU0NTEuLjE1NDNjN2ZkYWNlYiAxMDA3NTUKPiAtLS0gYS9wYXRjaHdvcmst
YXBwbHkuc2gKPiArKysgYi9wYXRjaHdvcmstYXBwbHkuc2gKPiBAQCAtMTQwLDYgKzE0MCwxMyBA
QCBlY2hvICIkMSIgfCBncmVwIC1zcUUgJ15bMC05XSskJyB8fCB7Cj4gICAgICAgICB9Cj4gIH0K
Pgo+ICtncmVwIC0tY29sb3IgLS1jb250ZXh0PTMgIkRNQVJDIFJlamVjdC9RdWFyYW50aW5lIiAi
JDEucGF0Y2giICYmIHsKPiArICAgICAgIGlmICEgeWVzbm8gIkRNQVJDIG1hbmxlZCBwYXRjaCBk
ZXRlY3RlZCwgYXR0ZW1wdCB0byBmaXggaXQ/IiAieSI7IHRoZW4KPiArICAgICAgICAgICAgICAg
ZXhpdCA0Cj4gKyAgICAgICBmaQo+ICsgICAgICAgc2VkIC1pICcvVGhlIHNlbmRlciBkb21haW4g
aGFzIGEgRE1BUkMvLC9hdXRvbWF0aWNhbGx5IGJ5IHRoZSBtYWlsaW5nIGxpc3Qgc29mdHdhcmUu
L2QnICIkMS5wYXRjaCIKPiArfQo+ICsKPiAgZ2l0IGFtICIkMS5wYXRjaCIgfHwgewo+ICAgICAg
ICAgZWNobyAiRmFpbGVkIHRvIGFwcGx5IHBhdGNoICQxIiA+JjIKPiAgICAgICAgIGdpdCBhbSAt
LWFib3J0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
