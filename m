Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33CB211D5
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 03:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uh3Mq/pnCaeyQ/nCwsmhLyMRwJHwl2J3FeiumDTmgA=; b=uENMAWDSVQ6MDW
	x34d3GP2oD1p08fz44ZEKw0agNXaQfpsbzn4hDmRQIBKXPcSr2X5xFvd8Bxd/s9FAnC3Ag4y72ctE
	qhj3wu/CkW2U+wMLAXis+YKRr0PsOMsFF0tLrBykD2FGdvp0hvtT8DlBh1NPh4iaFWLlg1Fk+eJHQ
	8SKwQHRiKgDDckGmymFD6jnjFdJAH07wRyrEXRoql9WZRAsOC/+bnFemvLzKllqPGuSo1ISc/hzps
	2B8pYprn21owXU07X0+pwIunXjuNJuSXuIXTDzxZtyi65C2dwxu7TH5b3TN9pnyBWnvc82gYjWH6b
	caz2M8z1VDMFF0Gz1K0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRRy2-0001LH-SE; Fri, 17 May 2019 01:47:26 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRRxv-0001Ky-2y
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 01:47:21 +0000
Received: by mail-ot1-x343.google.com with SMTP id s19so5311985otq.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 May 2019 18:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pF3htb4sSUvF1HvAASp5RLmcpTKsu7IbxiI032O1Sl8=;
 b=J1gcqI3BbjmDZQQzI2JXgtA/WSsO5wdIYv+WUCPKe3weiY1FuoY3Hc7J+dGQh3gez1
 Yz4GlXKv50tA1YBaU9CHor8Y6YglOeFrEcLbzD+W3wKM8a2zTdjGsi/at5dI4vxgfpJ0
 dbvBo7xHRiCjw+HIBhYMw2zLWpD3YUikz8HY9JWjg0snXFlxnDX7NnK5B1PB2tCRS3oW
 toTn8ULUGSpWiyZp9hhdKsZCwlHwiI033arX3lCqoCQiMXlcl+HbqtLH+iS8q1AIBLeo
 4CWXjwUsUS2UtSh9UuorsZvuKxbCdH7MkBSSSwrCz3LJikTHJSYHL9ts9dOAehHfOGNq
 pekg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pF3htb4sSUvF1HvAASp5RLmcpTKsu7IbxiI032O1Sl8=;
 b=qtHrcyuGwz/9dnx6/RBN/9KI3rR3MJVGGocLfv0tlvxnAv5vFnzFbKTxdShgFENINV
 4w2SwIoPW2wVH8gy6WCLYa1XG/sge0GK4M840DmsxgnY0igkErs+6yL0IxzcB0K5HHFo
 VcxEQlVJ+m6qC6Ir8o3uYa7UG2UBXaatB5IcKn9Aa2p6np/wqnyPyWmdcSu05R/T0Pmg
 WjOEFkfGwlVnDnrRhs/1gY1gooBGjsSLvTBu140936cNZeCiGlpJvccBglLSi3D9yDsy
 iBYvNKEMAVZZbM3YDBNWVsuAIJqldALojs/WMIindUvQdt9hwgZqZXxpfb/b94kCcbA5
 AVOg==
X-Gm-Message-State: APjAAAXwjPuaOa5eFywl9D2+yjoCGfBp5Pv6SDYAFtmQNXc7vk5d3BCA
 JGWL1VJusmxFO4GbRG+lphr8/MOzpmJSGWiXPGmN6ZWDuL8=
X-Google-Smtp-Source: APXvYqzhtkpV/ymHpmBfod6OpucY/my3F/6bgUATs1u3m49kELQiP4wEEsXqefn6dwD5MDJHOcOMFeQRo8fhr+t7V7c=
X-Received: by 2002:a9d:3622:: with SMTP id w31mr29305642otb.279.1558057637697; 
 Thu, 16 May 2019 18:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190501170445.4607-1-rosenp@gmail.com>
 <20190503171748.GA3101@meh.true.cz>
 <10C80B0A-E4F7-4619-85BE-B78580C58148@gmail.com>
 <20190503185541.GG71477@meh.true.cz>
 <1556910707.1846.0@smtp.gmail.com>
In-Reply-To: <1556910707.1846.0@smtp.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 16 May 2019 18:47:07 -0700
Message-ID: <CAKxU2N-LasxZy-Qxie0GavPn+Douq4nkyHZD-y82p6VCS5CfzQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_184719_154880_332448F9 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] libbsd: Fix compilation under ARC
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBNYXkgMywgMjAxOSBhdCAxMjoxMSBQTSBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWls
LmNvbT4gd3JvdGU6Cj4KPgo+IE9uIEZyaSwgTWF5IDMsIDIwMTkgYXQgMTE6NTUgQU0sIFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+Cj4gUm9zZW4gUGVuZXYgPHJvc2VucEBn
bWFpbC5jb20+IFsyMDE5LTA1LTAzIDEwOjQ5OjU0XToKPgo+ID4gT24gTWF5IDMsIDIwMTksIGF0
IDEwOjE3LCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90ZTogPiA+IFJvc2VuIFBl
bmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAxOS0wNS0wMSAxMDowNDo0NV06ID4gPj4gVGhlIDgg
eWVhciBvbGQgZmlsZSBkb2VzIG5vdCBoYXZlIGFueSBBUkMgZGVmaW5pdGlvbnMuID4gPiBJJ20g
d29uZGVyaW5nIGlmIHdlIG5lZWQgdG8gY2FyeSBhbm90aGVyIHBhdGNoIGZvcmV2ZXIsIHRodXMg
aWYgaXQgd291bGRuJ3QgYmUgPiBiZXR0ZXIgdG8gYmFja3BvcnQgdXBzdHJlYW1lZCBwYXRjaCBh
bmQvb3IgYnVtcCB0byBmaXhlZCB1cHN0cmVhbSB2ZXJzaW9uLiBBcyBJIHNhaWQuIFRoaXMgZmls
ZSBoYXMgbm90IGJlZW4gdG91Y2hlZCBpbiA4IHllYXJzLiBVcHN0cmVhbSBhbHNvIHNlZW1zIHJl
bGF0aXZlbHkgZGVhZC4KPgo+IEFjY29yZGluZyB0byB0aGlzIGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9saWJic2QvbGliYnNkIGl0IGRvZXNuJ3Qgc2VlbSB0aGF0IG11Y2ggZGVhZCB0
byBtZSwgYXMgSSB3b3VsZG4ndCBleHBlY3QgdGhhdCBtdWNoIGNoYW5nZXMgaW4gc3VjaCBjb21w
YXQgbGlicmFyeSBhbnl3YXkuCj4KPiBBbGwgb2YgdGhlIG1lcmdlIHJlcXVlc3RzICh3aGF0IEdp
dExhYiBjYWxscyBwdWxsIHJlcXVlc3RzKSBleGNlcHQgb25lIGhhdmUgbm8gY29tbWVudHMuIFRo
ZXJlIGFyZSBhbHNvIG5vbmUgdGhhdCBoYXZlIGFjdHVhbGx5IGJlZW4gbWVyZ2VkLgpBZGRlZCBt
ZXJnZSByZXF1ZXN0IGhlcmU6Cmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9saWJic2Qv
bGliYnNkL21lcmdlX3JlcXVlc3RzLzYKPgo+IC0tIHluZXp6Cj4KPgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
