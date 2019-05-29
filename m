Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B7B2D3C6
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 04:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6fdcV1gF8owjrn8S5aUA80WtBiV7HUU4RkyYACLGMg=; b=t5JFeLt+aRl0Fv
	0OudRJX+3Q8oYVOf39cEWURncOXQ/iMuqphXga26nsv3s8NtnEKYctZsYBBenvMjbTiA4vbkqyFcG
	h96M2VmxQKKS+ULA/qFP7CN2yVx6xmmrVj5VqXl01pxnoRZZyvmuww4SqpzmymRJy8Hi+Fbq9Vnmg
	uzDX1CMSWAAgxCHfmBTjSgBE2y9mU9fEstEqrMErcYtdsqw05bg4T89BKwKkcD4gItgxD4U3vRjkC
	PTDR5k6ZtWL8TPza1q80kk5oARy6CIEJ/thEgzVyQ/zILyDwhjI+4ZyH6opDs7QSqqCBx+/pj+elu
	UHX9aHqdIMZAgf0X4Dqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVoI7-00065e-UD; Wed, 29 May 2019 02:26:11 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVoI2-00065L-02
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 02:26:07 +0000
Received: by mail-lf1-x141.google.com with SMTP id h13so642631lfc.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 May 2019 19:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+thc2CPilyuQxRejhJNgZxjluRNvoYfRg634Hxjw8iM=;
 b=AFYpWDNz68dDAxtT/2ZCb0WIeDPGbPOm6Yj79QA7vcSXCaRrHKvE4YwwXjcPq6PeH2
 fJCgQa6JP+KEbRBJHvIi1WHXpTGkbjhocraBPCaI4nXlH5dbVY60Y5iYm7VxmxD6U4tJ
 IFvJZP/9wkS5iU3mkLiW7CBjLuHNtYc0Ad478a5HjtV3s2TWfr+YTRMvMI4X0NNOsxbm
 c5z2awqkuWn/x5jJPOAhlrhL2/zhGYDk4tpnXB3BdxBLMCOmdwW3eZ31oYyaAZp8LVnB
 Xw/H/YPhn+mX8WKsuQqVqNEW3F2twKVAfM3zelGsp826KO5b1njGwLOw9ZRrwd/7J86m
 Ronw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+thc2CPilyuQxRejhJNgZxjluRNvoYfRg634Hxjw8iM=;
 b=s8+9SsFrd7Cy2wCSO5n4anrCZ2AsNw5Gw135Z0wSVGaPzgRpr9aKUgmRwlAECqL6VV
 XPfrQ4ZZGJpiJMZ0EmIgVE2cSiU1Fnyz6XYCV8VWPQViAmaf+UNDvfxVixbHAw3c1qpC
 ALfi/fcuvD5LFhobLn+mIVgHB1EspwSDPEpH1AIcy3nab43ouykt+A7nTm43Jjoehen6
 +03EAKmD7zF5NSMKfVnDkKSknlhXV/f8pLtxsJmEKe9yPC2kPtCFhJ69MIHf44gGMRPW
 E3S7y26su+3EpVmKlQVVJtiOV6chKYiZAJhox29vYfWXlTnA+VvaO2SKfEx3XnjDYsTA
 vwJw==
X-Gm-Message-State: APjAAAVVWTjoT8qqsnacwicZ6ccDF/bulY6H/8Gq7CRivOPWwRM98Dmi
 C7eT5UL+Cle+FxFDz1YeVqIP7e1d6dAu7Y3brTs2y7Wd
X-Google-Smtp-Source: APXvYqzIKdS4hjFneVL6PBZnbRYj4/jxpjWr8jDLBBEqyUXBQ13MW6iHDfJGWeljQrs03ZYgWMVd4s9RdiY5ktWwcOs=
X-Received: by 2002:ac2:5621:: with SMTP id b1mr5543780lff.27.1559096763739;
 Tue, 28 May 2019 19:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
 <1558992584-11997-5-git-send-email-ynezz@true.cz>
In-Reply-To: <1558992584-11997-5-git-send-email-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 29 May 2019 10:25:52 +0800
Message-ID: <CAECwjAhOUfNqaN2Y2J3_eeKsO6cewZOP2q9P2nS2kGRqP=Mh4w@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_192606_065241_99CFF568 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] build: add urandom-seed and urngd
 to default packages set
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?Q?Stephan_M=C3=BCller?= <smueller@chronox.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCAyOCBNYXkgMjAxOSBhdCAwNTozMCwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiB1cmFuZG9tLXNlZWQgY29udGVudCB3YXMgc3BsaXQgZnJvbSBiYXNlLWZp
bGVzIGludG8gc2VwYXJhdGUgcGFja2FnZSBzbwo+IGluIG9yZGVyIHRvIHByZXNlcnZlIHRoZSBj
dXJyZW50IGZ1bmN0aW9uYWxpdHkgYW5kIHRvIHByb3ZpZGUgc29tZQo+IGZhbGxiYWNrIG1lY2hh
bmlzbSBpbiBjYXNlIGplbnQtcm5nIGluaXRpYWxpemF0aW9uIGZhaWxzIGluIHVybmdkIHdlCj4g
bmVlZCB0byBhZGQgaXQgYmFjay4KPgo+IHVybmdkIGlzIE9wZW5XcnQncyBtaWNybyBub24tcGh5
c2ljYWwgdHJ1ZSByYW5kb20gbnVtYmVyIGdlbmVyYXRvciBiYXNlZAo+IG9uIHRpbWluZyBqaXR0
ZXIuCj4KCklmIEkgdW5kZXJzdGFuZCB0aGUgcGF0Y2ggY29ycmVjdGx5IGl0IHNlZW1zIHRoZSB1
cmFuZG9tLXNlZWQgd2lsbCBydW4KYWxvbmcgc2lkZSB3aXRoIHVybmdkLCBub3QgYSBmYWxsYmFj
ay4gIElzIHVyYW5kb20tc2VlZCBhIG11c3QsIG9yCm9ubHkgc2VydmUgYXMgYSBwcmVjYXV0aW9u
IGp1c3QgaW4gY2FzZT8KCklmIHVybmdkIGNhbiBzb2x2ZSB0aGUgcHJvYmxlbSB3aGF0IHVyYW5k
b20tc2VlZCBpcyBmb3IsIEkgd291bGQKc3VnZ2VzdCB3ZSBtYWtlIHVyYW5kb20tc2VlZCBhbiBv
cHQtaW4gb3B0aW9uLCBub3QgaW5jbHVkZWQgYnkKZGVmYXVsdC4KClJlZ2FyZHMsCiAgICAgICAg
ICAgICAgICB5b3Vzb25nCgoKPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6Pgo+IC0tLQo+ICBpbmNsdWRlL3RhcmdldC5tayB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS90YXJnZXQubWsgYi9pbmNsdWRlL3RhcmdldC5tawo+IGluZGV4IDRmM2JkNDNlNmNiNi4uYTgx
M2JhMmQyZDg3IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvdGFyZ2V0Lm1rCj4gKysrIGIvaW5jbHVk
ZS90YXJnZXQubWsKPiBAQCAtMTMsNyArMTMsNyBAQCBfX3RhcmdldF9pbmM9MQo+ICBERVZJQ0Vf
VFlQRT89cm91dGVyCj4KPiAgIyBEZWZhdWx0IHBhY2thZ2VzIC0gdGhlIHJlYWxseSBiYXNpYyBz
ZXQKPiAtREVGQVVMVF9QQUNLQUdFUzo9YmFzZS1maWxlcyBsaWJjIGxpYmdjYyBidXN5Ym94IGRy
b3BiZWFyIG10ZCB1Y2kgb3BrZyBuZXRpZmQgZnN0b29scyB1Y2xpZW50LWZldGNoIGxvZ2QKPiAr
REVGQVVMVF9QQUNLQUdFUzo9YmFzZS1maWxlcyBsaWJjIGxpYmdjYyBidXN5Ym94IGRyb3BiZWFy
IG10ZCB1Y2kgb3BrZyBuZXRpZmQgZnN0b29scyB1Y2xpZW50LWZldGNoIGxvZ2QgdXJhbmRvbS1z
ZWVkIHVybmdkCj4gICMgRm9yIG5hcyB0YXJnZXRzCj4gIERFRkFVTFRfUEFDS0FHRVMubmFzOj1i
bG9jay1tb3VudCBmZGlzayBsc2JsayBtZGFkbQo+ICAjIEZvciByb3V0ZXIgdGFyZ2V0cwo+IC0t
Cj4gMS45LjEKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
