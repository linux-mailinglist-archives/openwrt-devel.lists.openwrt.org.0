Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5738532A
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 20:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LKsseseSZm/Aru2o/SIDI5AorZVRbpivKZy+TEBBJ4=; b=B0Ehc5ZpQoigvr
	+IaZcpjmyfPg2pHzMkIVIsukQGu/eX2qQxpvN4/tVk/FwIf3sIQGICLhN/pM7jaFCRzoaipnRP8sf
	bkd9ajegFUl14A53HQTwFjL/BazeqT7zG+wEmlHZn79H1l8vvhW13VcWgVrsgCgh4WjpDkAeBSwkg
	qcQqCAsBHOerQCcLaOXh1A5wZbyp5Te1C5g5el25x/BPiHqi7D/C4ZYewnBSqh2KEhxmfMDq5Pifm
	i2dbJMBUxI7U/BgkwlHy7HTEjOUKvN2GiB5JL1aijnU4zSquTRlYODjRX8HRk0UjFcqxOY2ck6wxM
	Gp+Tufa3sPVigJ7IEX7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQxN-0000tK-R5; Wed, 07 Aug 2019 18:46:42 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQxD-0000sz-7o
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 18:46:32 +0000
Received: by mail-ot1-x341.google.com with SMTP id l15so51144325oth.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 11:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4HIud6l142xcpuVVYYbAn5xOQGnIevm8Oh7WWOyBv+8=;
 b=fWWL1kJUpauIRLztllRhlD8mXTEE3KDV+ym+KuSPeio5SE7BRqtcVWqrtJmHhylIc/
 nNcPyYuzSEShva6vpttworGbCY+Tv6+wHiYV6PdqLNJgwMFP0KiRk5lgaGBoMV65alOM
 iN2/vvzytJKSIPedejQMwHjzGDgoAHXZOBQg5OZ3UihB5+OHU29hDLfAWWrP8XT1bQvT
 ohc+R3v5n4aGvqbTaMlf7ktW/bXep52LcmOmCvRPPDg6kGl8ODcKfRzAO0va992qLS0I
 20vw+xnSBZQRf9eNgrkUPszmYOMzXRp/5y5Efhcdm+7I77dApTnMF4PVt1lqAbrvYOIf
 rHrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4HIud6l142xcpuVVYYbAn5xOQGnIevm8Oh7WWOyBv+8=;
 b=C6fuJc/p9ssCBfjgoRIBfB3O4XYJ/R98RbfkZdqaAs6woZ6MyM27+qWAMfXm2jiaN7
 NPwl1XTbDcto/kE9tO4ZiVz1K+E7tgPQwpE1ZwJgYRzO12ID4snELSU2S63MDt38dKY1
 Y03ppGHTz/Oq7ypfxJGSkWedRfNGHtX0mwFFAJC3BjC3rNbjHxQ1YCSNeTYUwHt7iOBV
 95Kaw2dme+fUL3ohleJtcaljXzJSRdqIuJyTbQqWQ28rBtxJdanoTm5x3VEPRr1x5/nR
 YM/DuR3ki8ZeAiHiak2SOExfWJ6o0rNWaLEXByWSu/nqFM3iFMmKSP0H/9c/X2sducuu
 I0Sw==
X-Gm-Message-State: APjAAAVoUC7Ceo5g3YFCJ3gI/58CNYVVQwEP9ttOi4zm/B9qhStblPND
 3Jw+b2ZCiy1yiEXvJVndONbNX5IDMeT0O7iN1cc=
X-Google-Smtp-Source: APXvYqz+LWYzp/TqwMk7pV7/gI2zhVIsVgJyaz4q/yvpLDXKP8BcaoPmqs3gVyAitEM8rhbRr9tDhEPC6z3iFR5lRhE=
X-Received: by 2002:a6b:f203:: with SMTP id q3mr1603435ioh.208.1565203590236; 
 Wed, 07 Aug 2019 11:46:30 -0700 (PDT)
MIME-Version: 1.0
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
In-Reply-To: <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 21:46:19 +0300
Message-ID: <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_114631_299193_B93EBAEE 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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

TWF5YmUgREVWSUNFX1ZBUklBTlQgOj0gQ0ggaXMgYSBiZXR0ZXIgY2hvaWNlLCBzaW5jZSBpdCBp
cyB0aGUgc2FtZSBkZXZpY2UuCgrRgdGALCA3INCw0LLQsy4gMjAxOSDQsy4g0LIgMjE6NDAsIERt
aXRyeSBUdW5pbiA8aGFuaXBvdXNwaWxvdEBnbWFpbC5jb20+Ogo+Cj4gPiBpbiBjb21taXQgdGl0
bGUvZGVzY3JpcHRpb24sIHlvdSBhcmUgdXNpbmcgIldOUiIgaW5zdGVhZCBvZiAiV05EUiIgLi4u
Cj4gT29wcy4KPgo+ID4gRGVzcGl0ZSwgZnJvbSBhIHF1aWNrIHJlc2VhcmNoLCBpdCBsb29rcyBs
aWtlIHRoZSBkZXZpY2UgaXMgY2FsbGVkICJXTkRSMzgwMENIIiBtb3N0IGZyZXF1ZW50bHkuCj4g
PiBJIHdvdWxkIHVwZGF0ZSB0aGUgbmFtZSBhY2NvcmRpbmdseS4KPiBJIGNvcGllZCB0aGUgYXI3
MXh4IG5hbWUsIGJ1dCBJIGFncmVlLgo+Cj4gPiBOb3RlIHRoYXQgeW91IGFsc28gaGF2ZSB0byB1
cGRhdGUgdG8gREVWSUNFX1ZFTkRPUi9ERVZJQ0VfTU9ERUwgc3ludGF4IC4uLgo+IEkgZG9uJ3Qg
cXVpdGUgZ2V0IGl0LiBXaGVyZSBpcyB0aGlzIHN5bnRheD8KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
