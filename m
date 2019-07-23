Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D67F71773
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 13:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqvz6389uXnSBON7i7ypP2fiC15HK6P9MZU9/EkRty8=; b=qzyWj7IDaiRkUu
	JehynLhSHmXJVUe+GfadTCPZ5I5ANq4xVWxyEcK8wzMmHNqNqyTWQmw1V0vuPuU+0lov9wUntpRRz
	GHNUcvWYKdjEnxzF1TaSfhKCZqfqUG8kisIAhh2GPiAO+3KnuUEYnISj9WrHjF3vYCRxxcVb+6xww
	3If4VnOtzEuU49zUfcKdDDN/zFpHeMIxYXXF4gJdzWA7Zf7BL6Xkoyiw90QGaJ4foQeEcQDBXvapb
	YzqT2mR+sidh2lQ8xLFJA9n/kp5NwrC1C7b3k7YD4bgraJ88TGdFlOghedTlA8I2vJ3+L3s2RtjDl
	mSsVR8DQLkgAWkHVUhmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptIk-0004MI-9f; Tue, 23 Jul 2019 11:49:50 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptIY-0004Lm-7c
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 11:49:39 +0000
Received: by mail-lf1-x144.google.com with SMTP id s19so29135700lfb.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 23 Jul 2019 04:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wO04/8CLoIR4W5rOgnr+nwJbiaA1kqGcPUFbI77QRk0=;
 b=gYr/fpx0xgdpEwGoFBhJiKJNN4D8PCf9T+eSwuJau7jAlf+tCetcertgczuZL7mTkK
 plB3uN8sjkMxTHxWh248efmC8ppJnRqzhote4paVkyVs79K9Pd4l0gNfVYt1gnBXeSns
 u2T4DJcUInCwOIvLfeSUjNDC2dsxpltEJXEAar9kZqNr0Gj5eQbX58R/8n7lqlG08d3g
 d3iaFhDjarZhmavP4BGgGD3jgmukTGxOgRty2VIU8RLXGRzK8kodlP9+pSyltFZQEA5K
 YLXn6g0YqJl4SUH3FiLVnsA7rqqBX5IGkhg1tB03kuvSd4fTE1mip+FzQmXhoh4mOccU
 C+Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wO04/8CLoIR4W5rOgnr+nwJbiaA1kqGcPUFbI77QRk0=;
 b=tO/lC7WSgcQSp6WhccSnukZKwebN0xBgX72qUlQgpHPwpk2opL08SkfHCUIJEyYsXB
 8t36CL77ANbHefxwS96eN01lZ8E5aIx60MvyS72vwYVLW3E4isprK5LZJlrSKS38Ushh
 c4r23O80k3nDS+3Ql2rqFd6ppQ0SX/sKz+wQl7oBFvw7ioJQ7kyMndZIKsPp86z1W+F/
 STfJiHu8tyyUpqHjdpONZxojhOw1tJvIGa010BUPDsOv2owxywkInYeGMXiz8cnDC6hu
 ao0YLaR3K1asm/MJPbdo55MsJ0FnNXat8+Pq89vlpCMLOKFfKHYtbKb1daGyV8Z+lILi
 LrYQ==
X-Gm-Message-State: APjAAAUk5uetXmQNNQUlSmC8Ulq2R7ApMNPxQaNQutf0yvW9Nv4Sp9hV
 XEQ+AxdWPY0oro0L6e4P1SqxI4RoglwTYlTdpH2zwYj/
X-Google-Smtp-Source: APXvYqx0RWMqs3/sRw7+B/8LEuEgaxWm01JPUw7CokImpLUKLGuhdD2FKLO4rSxFnn7GmgHucrwpcp6fXroJsFgki/I=
X-Received: by 2002:a19:48d1:: with SMTP id
 v200mr33701777lfa.190.1563882576803; 
 Tue, 23 Jul 2019 04:49:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190723102452.30621-1-ynezz@true.cz>
In-Reply-To: <20190723102452.30621-1-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 23 Jul 2019 19:49:25 +0800
Message-ID: <CAECwjAgTg20sayKSpc9+Ps_5bv7RsDfSBKQigUs8AqOtRTKYgw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_044938_272694_DE5FBFE9 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: implement generic
 service_running
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

T24gVHVlLCAyMyBKdWwgMjAxOSBhdCAxODoyNSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBEUlkgaXMgZ29vZCwgb3RoZXJ3aXNlIHdlJ3JlIGdvaW5nIHRvIHN1ZmZl
ciB3aXRoIGEgY29weSZwYXN0ZSBkaXNlYXNlCj4gaW4gdGhlIGluaXQgc2NyaXB0cy4KPgo+IFNp
Z25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gLS0tCj4gIHBhY2th
Z2UvYmFzZS1maWxlcy9maWxlcy9ldGMvcmMuY29tbW9uIHwgOSArKysrKysrKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBh
L3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9ldGMvcmMuY29tbW9uIGIvcGFja2FnZS9iYXNlLWZp
bGVzL2ZpbGVzL2V0Yy9yYy5jb21tb24KPiBpbmRleCA3NWRiZWVkZjM0ZDQuLjNiZDM4MmFlMjdh
YyAxMDA3NTUKPiAtLS0gYS9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRjL3JjLmNvbW1vbgo+
ICsrKyBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9ldGMvcmMuY29tbW9uCj4gQEAgLTk1LDcg
Kzk1LDExIEBAIHNlcnZpY2VfZGF0YSgpIHsKPiAgfQo+Cj4gIHNlcnZpY2VfcnVubmluZygpIHsK
PiAtICAgICAgIHJldHVybiAwCj4gKyAgICAgICBbIC1uICIkVVNFX1BST0NEIiBdIHx8IHJldHVy
biAwCgpUaGVzZSB4eF9zZXJ2aWNlKCkgYW5kIHNlcnZpY2VfeHh4KCkgZnVuY3Rpb25zIGFzIGNv
bW1lbnRlZCBhcmUgZm9yCnByb2NkLCBzbyBubyBuZWVkIHRvIGNoZWNrIGZvciBVU0VfUFJPQ0Qg
aGVyZS4KCiAgICAgICAgICAgICAgICB5b3Vzb25nCj4gKwo+ICsgICAgICAgbG9jYWwgc2Vydmlj
ZT0iJHsxOi0kKGJhc2VuYW1lICRpbml0c2NyaXB0KX0iCj4gKyAgICAgICBsb2NhbCBpbnN0YW5j
ZT0iJHsyOi0qfSIKPiArICAgICAgIHByb2NkX3J1bm5pbmcgIiRzZXJ2aWNlIiAiJHtpbnN0YW5j
ZX0iICIkQCIKPiAgfQo+Cj4gICR7SU5JVF9UUkFDRTorc2V0IC14fQo+IEBAIC0xMDQsNiArMTA4
LDkgQEAgJHtJTklUX1RSQUNFOitzZXQgLXh9Cj4KPiAgWyAtbiAiJFVTRV9QUk9DRCIgXSAmJiB7
Cj4gICAgICAgICBFWFRSQV9DT01NQU5EUz0iJHtFWFRSQV9DT01NQU5EU30gcnVubmluZyB0cmFj
ZSIKPiArICAgICAgIEVYVFJBX0hFTFA9IlwKPiArICAgICAgIHJ1bm5pbmcgQ2hlY2sgaWYgc2Vy
dmljZSBpcyBydW5uaW5nCj4gKyAgICAgICAiCj4KPiAgICAgICAgIC4gJElQS0dfSU5TVFJPT1Qv
bGliL2Z1bmN0aW9ucy9wcm9jZC5zaAo+ICAgICAgICAgYmFzZXNjcmlwdD0kKHJlYWRsaW5rICIk
aW5pdHNjcmlwdCIpCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
