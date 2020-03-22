Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E4718ECAE
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 22:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fl2z868yzu+I1X7HkJuAM3y1o85C2ZOiAqHQSt1f0H4=; b=jukuUqWXf4qZek
	QtoxOdUbOymDN8OGzldYmfwdeg+LSgzqcC0IhbcpL8xNpiNz43A45Lr4/eqgx6AhIjC23AF5syP/s
	Yq4B9KOwIoY6TR9JaB1dQ/6bgSARKoS/bTiHg8pi7n9Rpef3vi0HkiHWipfdyj8pgj+udoCVJqTuH
	gw66USRveQYhibkFQE5+amQmuJEHD4Zj/ICXXL1p3+CQpys0VYXz4hSjhQUSz/SYfISpxkpOsIEWn
	UGXaMIyFydlkEjGmugPRRvfmA0Gf8a3XxdzSpP33n0y5XN1RAaGRvp7M030x+DhNohrD3fdNd5E2/
	vi1SHOQvCNQL89+Kr0zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG868-0001Xd-TR; Sun, 22 Mar 2020 21:25:32 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG861-0001XI-Vu
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 21:25:27 +0000
Received: by mail-oi1-x242.google.com with SMTP id y71so12741137oia.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 14:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=btVX3V2NNT6RzI0wYJE3yMV/0WAH2n3pfn+rKv41hhU=;
 b=qZ1Gbydp8BeaiR1+FHAlTTmZbev7E8I27sKxIjpo5jwCAeeYU4cY9n//WbWyn9377Z
 xQbz89iuf732nNtj8THWWTE2o0T2weqWiscr7r8RJ7mp6gWQt9tl3vWs4E+eB9+vCCZP
 ADL1IN3a6oOWNvbutjXj1k4GIEi/Uei79tZ2my7C82U1J0DUrhzna05UqvwGEHSr3IlW
 m8UGdGcRyXtApRIwX1LWT3GjXPt0aXYnjkwLwEQRRvqTUZC/+Fn15KcMof4zgPg7jDwk
 xc9g4kiPMSwp+vmXgXJW3YGLALnpfH/k2PSVe1e4/Ni5WZ+10gOpWn82dIH6Ll1XVIBa
 hcUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=btVX3V2NNT6RzI0wYJE3yMV/0WAH2n3pfn+rKv41hhU=;
 b=HGZ2nUET4CpJJ/b0C6P4TuNt3+Uxjn0b3e0+qmNFHf9ACZzxkwblyFnhHh83PIZZn4
 NIALOJrPROYZw/g1Jpx0ol+gSNpEn2KsGQrE6icTzpXvDVIrywIy7eBbHS2QL/O4YhF0
 3oRKbwx38jY86Xo0VyqslZsLgM+/E8+LxO0rQZVOwJjL0sVcgVhAkF6I3fCyxh62/h2/
 IiQCgTIusgDvGtLEGf998SVUJPInzoQx6KHUstQRwCHnjFyk0XOpVXkpGD/qn+Pqsq2E
 MJ6nRhd8hrnJammrBVNO4pnTwvF07EjbzNHa2j/kv6FJJYyrLTnRUd09/pqo772oj4K2
 lKNA==
X-Gm-Message-State: ANhLgQ2XKYwYv6AvyIIJfICBqetqRJXYr08X5S8cFTyENmUT43HzlOHA
 TnXTLuYa8E6Y8lK7vgRsF4wGB5CfKWHsRHVf7rPDJ1Xn3Ug=
X-Google-Smtp-Source: ADFU+vurckzu1dHmxveaujj4DcJ7HkrhtrLJdpQxFb3sFsiuZL1ol+o26jwtQkYg7hUk1pW/J/eABDy+6SlXBa4eKno=
X-Received: by 2002:aca:574a:: with SMTP id l71mr13959325oib.148.1584912324980; 
 Sun, 22 Mar 2020 14:25:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200320234506.1310362-1-rosenp@gmail.com>
 <20200322144520.GE85632@meh.true.cz>
In-Reply-To: <20200322144520.GE85632@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 22 Mar 2020 14:25:14 -0700
Message-ID: <CAKxU2N9CEd0qSYJGxHiU4U9fA-AQve_Jrw4KNwVQP5UMXnBNiw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_142526_028231_10ABCCB8 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] busybox: fix build with musl 1.2.0
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

T24gU3VuLCBNYXIgMjIsIDIwMjAgYXQgNzo0NSBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAyMC0wMy0y
MCAxNjo0NTowNl06Cj4KPiA+IFRoZSBTWVNfc2V0dGltZW9mZGF5IGlzIG5vIGxvbmdlciBwcmVz
ZW50LiBUaGF0IGlzLCBpdCdzIHJlcGxhY2VkIHdpdGggdGhlCj4gPiB0aW1lMzIgdmFyaWFudC4g
VGhlcmUgaXMgbm8gdGltZTY0IHZhcmlhbnQuCj4KPiBGWUkgdXBzdHJlYW0gZW1haWwgImJ1c3li
b3ggMS4zMS4xIGJ1aWxkIGlzc3VlcyB3aXRoIGdsaWJjLTIuMzEgYW5kIG11c2wKPiAxLjIuMCJb
MV0gbWVudGlvbnMgb3RoZXIgZml4ZXMgYXMgd2VsbC4gSWYgbW9yZSBmaXhpbmcgaXMgbmVlZGVk
LCBpdCB3b3VsZCBiZQo+IG5pY2UgdG8gaGFuZGxlIGl0IHZpYSB1cHN0cmVhbSBmaXJzdCwgdGhh
bmtzLj4KPgo+IDEuIGh0dHA6Ly9saXN0cy5idXN5Ym94Lm5ldC9waXBlcm1haWwvYnVzeWJveC8y
MDIwLU1hcmNoLzA4Nzg0My5odG1sCkkgbG9va2VkIGludG8gdGhvc2UuIEkgZGlkIG5vdCBuZWVk
IHRvIGJhY2twb3J0IHRoZXNlIGluIG9yZGVyIHRvIGdldApidXN5Ym94IHRvIGNvbXBpbGUuIEkg
YXNzdW1lIGl0IHdvdWxkIGJyZWFrIHVuZGVyIGN1c3RvbSBjb25kaXRpb25zLgoKTm90ZSB0aGF0
IHRoZSBsYXN0IHBhdGNoIGFkZHMgYSBkZXBlbmRlbmN5IG9uIGxpYnJ0IChwYXJ0IG9mIGxpYmMg
Zm9yCm11c2wgYW5kIHVDbGliYy1uZyBidXQgbm90IGdsaWJjKS4KCkkgdGhpbmsgdGhpcyBwYXRj
aCBpcyBnb29kIGVub3VnaCBmb3Igbm93Lgo+Cj4gLS0geW5lenoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
