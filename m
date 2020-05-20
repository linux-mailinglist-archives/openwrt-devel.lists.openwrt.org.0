Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313341DBC8E
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 20:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tecCF6j9aixJM2DOJEHnUysc89mIF0eG4uEzpvK7nrU=; b=AWDoGKk9DxdNsY
	deivYS64vE16lgPSPXcQ4jo/LQd/NEtJ7nG2chRxOxD6YGTiVHj8laRlsv5ra/14KsHRkE14Rb9qf
	m1WYaM8z1uP0jpoH/+KSkSyyaptV0ytyPkqy1ibcjIxiv5ekajJIkEfjXMxl06eorT5iDbQ+88TS0
	FW/fkaIo4yXeMPL+6cVhWUKutZrn+f5ZIJfs8sglfqHSUWZwdXVFVGsHYPCXQjNOu4wbD0klRH9Vi
	VGaPleqhVjeTT/aLLAEWkm0rIff8DeOq9u3z7w32xvnE3E8SD9LLM99rsmsdB7U4tRXrMn54zHRqd
	AFP/XF9UjI7Tmy122hpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbTJt-0000Bx-8C; Wed, 20 May 2020 18:19:57 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbTJj-0000BI-Vp
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 18:19:49 +0000
Received: by mail-ot1-x341.google.com with SMTP id 69so3314788otv.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 11:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6WezLYB0q3WzG/9mNEr4vyopP9tNtEXXp8cYUUFOgPc=;
 b=SuNxvYPhB7mjYB7Om34Gp5GYKK4mKu3b40GYQ6BmM0OPhnQdyeVjw7jv2/0d2CvAuv
 uQjjWU6pKvblunG79ykFePmh67cVqEw8dA48S8kYB9100hElkGYF6RiFzzUfuDxZCeKx
 6XBCaOamcwIQDnt9uYyNDxSHTNEHwnQ8WArKvHsom3n1Ow41I9yGHuPy0H9scaC9Aj6c
 zt5eJAiRL1CpcxB2aGluhmNKbYTjFiDFtN6Mn8AzEgLjB17yHYI5tYci1VtuAoKNBOv3
 kYWisLGuhcjArB7q/OSATBCLZevyY+CHHUnZu/rxq8Uifcohcu5WVDecjx/qaX3UNMu3
 9rVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6WezLYB0q3WzG/9mNEr4vyopP9tNtEXXp8cYUUFOgPc=;
 b=m+VkjzRX6q7KypzjXjKm8bcooPpxoDQ1IQRh2QNfccl3VfUnzxaLRsDydgi6gMyOSr
 uJzh4JsxjrKi+zC9GEBMNSwmKiFPhNEqAuqxqaaiShAEIL2jVW3SlAbjowB33X0pHehX
 qgHR+Lxcy4s7NKlQ3aBwGkircDjJSHE5eF8Z81Xi5/9tKKmLwEikDEkQqWjLzD2juKq8
 CzBQlog5qt5rFiHBpT6eL32BstL6/dJDR/R+7HKupBYPld0gZa9nzNAU1KZ+LumTSnhO
 v2reQ18ZfOJCep5dunLDiA0aX1F9/6NlAwwrG4vfNVHJqFeuNLVqLAICLGKxKA632hPb
 32Yg==
X-Gm-Message-State: AOAM5315GLxeQylcEEd7tCPzuVm6IPKfZsrEibaHNvzQwvrXDqvT1VVu
 AU9wsN6YS/4dFH1wqX/+aoRI+qcZ0sC3JpXD+6b7wpK4+gc=
X-Google-Smtp-Source: ABdhPJxn3R7PYBoPYXAprvi5lJxLsNZx/m65aYkVEQ11vvJvqeUgWkqrqayoVi7Ih+/nmr4/5nrnvcqV+UcSty+lOJ8=
X-Received: by 2002:a4a:615d:: with SMTP id u29mr4388885ooe.15.1589998783089; 
 Wed, 20 May 2020 11:19:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200330044434.1954554-1-rosenp@gmail.com>
 <20200520135258.GA11175@meh.true.cz>
In-Reply-To: <20200520135258.GA11175@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 20 May 2020 11:19:32 -0700
Message-ID: <CAKxU2N_FZPs9oNXkV5gUrHEox6mLXLLpc3ZhO=x-UJ7o+Mszeg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_111948_026016_81023CC2 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ppd: add missing header
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

T24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgNjo1MyBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAyMC0wMy0y
OSAyMTo0NDozNF06Cj4KPiA+IHN5cy9jZGVmcy5oIGlzIG5lZWRlZCBmb3IgX19QIG1hY3JvIGRl
ZmluaXRpb24uCj4KPiBXaGVyZT8gSSBtZWFuLCB3aGljaCBjb21iaW5hdGlvbiB0cmlnZ2VycyB0
aGlzIGlzc3VlPyBQZXJoYXBzIHVwc3RyZWFtCj4gbWF0ZXJpYWw/Ckl0J3MgYSByZXN1bHQgb2Yg
bXkgbXVzbCB1cGRhdGUuIFNlZQpodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1
bGwvMzAwNAoKSSBndWVzcyBJIGZvcmdvdCB0byBhZGQgdGhpcyBwYXRjaCB0byB0aGF0IFBSLi4u
Cj4KPiA+IFNpZ25lZC1vZmYtYnk6IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPgo+ID4g
LS0tCj4gPiAgcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3BwcC9NYWtlZmlsZSAgICAgICAgICAg
ICAgICB8ICAyICstCj4gPiAgcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3BwcC9wYXRjaGVzLzgw
MC1jZGVmcy5wYXRjaCB8IDEwICsrKysrKysrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgcGFja2Fn
ZS9uZXR3b3JrL3NlcnZpY2VzL3BwcC9wYXRjaGVzLzgwMC1jZGVmcy5wYXRjaAo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvcHBwL01ha2VmaWxlIGIvcGFja2Fn
ZS9uZXR3b3JrL3NlcnZpY2VzL3BwcC9NYWtlZmlsZQo+ID4gaW5kZXggOWU0MmNiNzQzNy4uODhi
MGE1MThlNSAxMDA2NDQKPiA+IC0tLSBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9wcHAvTWFr
ZWZpbGUKPiA+ICsrKyBiL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9wcHAvTWFrZWZpbGUKPiA+
IEBAIC05LDcgKzksNyBAQCBpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5tawo+ID4gIGluY2x1ZGUg
JChJTkNMVURFX0RJUikva2VybmVsLm1rCj4gPgo+ID4gIFBLR19OQU1FOj1wcHAKPiA+IC1QS0df
UkVMRUFTRTo9Mgo+ID4gK1BLR19SRUxFQVNFOj0zCj4gPgo+ID4gIFBLR19TT1VSQ0VfUFJPVE86
PWdpdAo+ID4gIFBLR19TT1VSQ0VfVVJMOj1odHRwczovL2dpdGh1Yi5jb20vcGF1bHVzbWFjay9w
cHAKPiA+IGRpZmYgLS1naXQgYS9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvcHBwL3BhdGNoZXMv
ODAwLWNkZWZzLnBhdGNoIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3BwcC9wYXRjaGVzLzgw
MC1jZGVmcy5wYXRjaAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAw
MDAuLmUzNjEyNzVhM2MKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL3BhY2thZ2UvbmV0d29y
ay9zZXJ2aWNlcy9wcHAvcGF0Y2hlcy84MDAtY2RlZnMucGF0Y2gKPiA+IEBAIC0wLDAgKzEsMTAg
QEAKPiA+ICstLS0gYS9wcHBkL3BwcGQuaAo+ID4gKysrKyBiL3BwcGQvcHBwZC5oCj4gPiArQEAg
LTUzLDYgKzUzLDcgQEAKPiA+ICsgI2luY2x1ZGUgPHN0ZGxpYi5oPiAgICAgICAgIC8qIGZvciBl
bmNyeXB0ICovCj4gPiArICNpbmNsdWRlIDx1bmlzdGQuaD4gICAgICAgICAvKiBmb3Igc2V0a2V5
ICovCj4gPiArICNpbmNsdWRlIDxsaW1pdHMuaD4gICAgICAgICAvKiBmb3IgTkdST1VQU19NQVgg
Ki8KPiA+ICsrI2luY2x1ZGUgPHN5cy9jZGVmcy5oPiAgICAgICAgICAgICAgLyogZm9yIF9fUCAq
Lwo+ID4gKyAjaW5jbHVkZSA8c3lzL3BhcmFtLmg+ICAgICAgICAgICAgICAvKiBmb3IgTUFYUEFU
SExFTiBhbmQgQlNENF80LCBpZiBkZWZpbmVkICovCj4gPiArICNpbmNsdWRlIDxzeXMvdHlwZXMu
aD4gICAgICAgICAgICAgIC8qIGZvciB1X2ludDMyX3QsIGlmIGRlZmluZWQgKi8KPiA+ICsgI2lu
Y2x1ZGUgPHN5cy90aW1lLmg+ICAgICAgICAgICAgICAgLyogZm9yIHN0cnVjdCB0aW1ldmFsICov
Cj4gPiAtLQo+ID4gMi4yNS4xCj4gPgo+ID4KPgo+IC0tCj4geW5lenoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
