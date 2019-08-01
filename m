Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F38B7D6AE
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 09:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQNo7L+G9noI40s/v4368T8uiz4y0N2PDxP8VioO3Qw=; b=P27r5ojeR/AfLk
	kAyTQppfGx93waBykuZ7GGYi0L+NUTjLF2AAB96ynMwnWykDtRtRfbISt0eYLl9xsVhu7CxXQUmpH
	MS8SMRZaPvs2KOcHOooQl0KR2JclSO0fSABo3UBWDYYoGsM0jF528SRfzE5Dye843x3ji692NjNCK
	VAzNB+eCRzgeoZVx+zjpgWa+3QDtfXJowEqsQMf7j0YPbfQlY2ZWVdSedI7d1zlhOqdZGiq9Aoren
	l7pGN3LoP5RiavsHVwAfvdmunfUgxFU3c5SzdUbkLnzFEVybkw21YJu++oTX7DKjERSJ9c5Yga0rR
	ul8Frasgs2xDqMPMINgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5vH-0000jl-LN; Thu, 01 Aug 2019 07:54:51 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5vB-0000jL-Pg
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 07:54:47 +0000
Received: by mail-ot1-x330.google.com with SMTP id s20so7783126otp.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 01 Aug 2019 00:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=he3305dxKdCoZ7GHV2GwrzgTR5MCp9/mor5DRae4+wo=;
 b=BnZ8pw7zc5tKzH+sOTeXmn7gF5HmwGHXerJJxMdtPsl5pzh6oDJ7NBuZgwbrXEJf41
 AdKVisAqUdrXh7CO2aWfv231VeEtuuB1TLh3/hsUexjoRoUDmmiWDsmdqg0mrK2dOS9c
 uB6yEJ/NgLPAFEKODszGhRBwbwRaoa5bXscExDuL4YA/AYc00FSmiMXRlhKPkoQV/Z0J
 +UUcsqE9GLQN+Jo5jE5Sd+XJwRNOMlb+weEpiNETgoa3EmYiLSdtHmRnPYKaG/yHxS/S
 MpvXzIOLlbDZEmdVbJZ10obcVzU0ExsEP+HT56BB4QGiWZhCR+Zrr2Lrr3r/0n15b7ry
 2tBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=he3305dxKdCoZ7GHV2GwrzgTR5MCp9/mor5DRae4+wo=;
 b=Tpx0j2NYSjwB/qz0VCAOajHBaRgfJgyrWfG4/PJqvF19R2eZGK6Jq6JaBT/4a5DH7W
 d8jz+rNRWEvIhFFR0oaHdnSk9exeCZ5E98Gb++hhh7Rt5/bnIiC/MNtLumnbhbaqZUoU
 dwKGR2VsvbDj0bHki9wrzs3gZ66SVi4O2UiizxsGFm/CAJCu0j0x+57f3ghbulrp+7Cn
 MZtvhrCAQDw84KoLIWVkOPypkf2RDlU5VwnpmRroNu4UkFbBwKpbsn3Cs77oDM/p4Kmj
 lsek28+ng63U3bZNDkY5GX/SaEUt53fPQxqK27JK6fuahJDj8e2GSKzZfuy3U9jkd4ZJ
 rY7A==
X-Gm-Message-State: APjAAAXuUylTo0veY5tLgV0R3X38CGTyUYetKiXar6RtHZjigU0H1sCY
 xUqQEObYC9A451uulcTz/ZO1LHkT+oaz7MUes5o=
X-Google-Smtp-Source: APXvYqxbUbDWSdOgT9FFUIC6Jcr2dY3t9EFVTsoYrCZF84IoKuKjPDYRObm8jWE0pkIhhLWx76OH7XEXo80yzeh9Xkk=
X-Received: by 2002:a05:6830:1681:: with SMTP id
 k1mr12168883otr.256.1564646084348; 
 Thu, 01 Aug 2019 00:54:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:2015:0:0:0:0 with HTTP; Thu, 1 Aug 2019 00:54:43
 -0700 (PDT)
In-Reply-To: <20190730093705.GF74752@meh.true.cz>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 1 Aug 2019 09:54:43 +0200
Message-ID: <CAKR_QV++ebOfgX-OUPY+OWz1_kUNiEP85csYFwswJL+vVXtfZw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_005445_835845_AE7DB5AD 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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
Cc: Dmitry Tunin <hanipouspilot@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMzAvMDcvMjAxOSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cgo+IGIp
IGl0IHdhcyBkZWNpZGVkIHNvbWUgdGltZSBhZ28sIHRoYXQgMTkuMDcgaXMgbGFzdCByZWxlYXNl
IHdpdGggYXI3MXh4LAo+ICAgIG5vdGhpbmcgYWJvdXQgYXRoNzkgaW4gMTkuMDcKPgo+Cj4gLS0g
eW5lenoKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwKPgoKc29tZSB0aW1lIGFnbyByZWZlcnMgdG8gYmVmb3JlIG9yIGFmdGVyCjAxNmQx
ZWIxZjljMTRjNTBkYmQwYjU0NjFmYzIyYzFmNGVmNmUzMGEgPwoKYmVjYXVzZSB5b3UgY3VycmVu
dGx5IGhhdmUgYm90aCB0YXJnZXRzIGFzIHNvdXJjZS1vbmx5CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
