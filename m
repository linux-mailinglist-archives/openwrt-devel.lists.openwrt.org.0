Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAAA1D6F99
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 06:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ktY8vmeX2XdcTSLF1WUJc9IRKdLnijy4j9atofTUZk=; b=AnPYRrEa0sfkpo
	jd4CJt+1UIMEjhTUD3H/+Un4Y249oYUHWb0orqsGXyk8RhmkGCl/QI0rCx97rb8yAPs+bkieVZ1VF
	85CfIRW7IkRrv0SDG+pjOO0Ho5o9SDPq5RGG1nLEBBUtiiwqdudJxCk20qhat4M742NMV8uP2JGjh
	fE4l4lul4dolcw/DmF/GpjiLEzzsQQPuiohc5YXYVsq49anFzy9xz8x8KV4/m4zUnK8Yx41dbPN6E
	+CseuzIlek9P8fKwguZprCytkZihvBL7WUkc/xctJPzMt5AfKF5jFA/w+7JPhvjhvJf3sKwgr6to9
	+m3PGe8Ut9cY5wJqMQNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaXGE-0003Hq-5B; Mon, 18 May 2020 04:20:18 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaXG7-0002vU-PO
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 04:20:13 +0000
Received: by mail-wm1-x332.google.com with SMTP id z4so6651244wmi.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 May 2020 21:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nYfukJyUIm1e5q410QUtD9lh3FUq/csfrIkDRnhKgoU=;
 b=mqSQ16G42EmK1hr40mXpq4Om2arsEqqUHlFeAs1d6hvOT/uwdmi+FhYHAfZAT7hLkk
 Ux+1gWnaU7+eECZ897A6fi5I2SO54TmVASywN9vgTXEAj2QDdRjcWUaGTqavA6Ol4kqa
 OlLBNHVDzRuV0MqzWj9Kvaul8gv/3FAoNzvLiVJj7znfSYZk7ItnpY5+tlo68nJKnS7b
 M6lkecA6sKNiApwzVvLuFQ0Tk4nfp6H2VNzNSyHQN9VuY1C4vCkB8s5uLqTmHN6pVPKZ
 ApUdMV0IhEvg+GcddzWxSxWMEhh6bH/8jMiUQat7dLURpAu3Yo87wQKjn07Zp6kjAUPk
 9SPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nYfukJyUIm1e5q410QUtD9lh3FUq/csfrIkDRnhKgoU=;
 b=cCRUuNnK5IZAZVFSsksyt6dcVj7gn11D8fisysqRYU3Qt+TSgWNfgJiDCAbqhc/tr6
 KcXt7h4fjOxnik2UjJXjDKhCOD815mVKLVmV9KgfPj07TTYwdOQvxyeeKmn1oCe1GfvJ
 HlKZvG6tMV8eilAuCSaOGCFX/U9vE788OPf2BlmM9qt/2AnB7ASv5jSTZ8x5Za6Db3VT
 emuAH/UjKVE31sdiN9BJyHu2kWIP7BCFDbQVt+YaRJKfdv3YgmlkJlkGLGdnQLSCQ27l
 6HPeyQWZMaYzgT7iq9VOLO1hjExWy46eZN47NGDp/N3shbXO1mxytCY3x3r/6Yh5CzqI
 bh+g==
X-Gm-Message-State: AOAM530Xpfll+Moepf9+/APPexPWFSfDNRkU3TMcA/aZYK253AmV71A8
 uFnYmUpK8V7QsGui1s3MQf5YRi+unXJogSkui2w=
X-Google-Smtp-Source: ABdhPJyvVQvdGrELgxjlkGY0OMzy+fzlirf71HUnbmi2U3l65WjLuFzmYRmBHSEygy60SRFRZFTMJ5h/zIjbuLrstPY=
X-Received: by 2002:a1c:305:: with SMTP id 5mr16757320wmd.60.1589775609216;
 Sun, 17 May 2020 21:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAJN1KkxavQr9d1WC=1aSPcyT2r4pMak0W9YcmD73oymSpzYCCQ@mail.gmail.com>
 <CAJN1KkwJAhYXmFTzADT2gSp0OLwJc72J5EnXCveu7G+1s=1nXA@mail.gmail.com>
 <E4143C9F-46DA-4B49-B42C-C4979EE1B067@me.com>
In-Reply-To: <E4143C9F-46DA-4B49-B42C-C4979EE1B067@me.com>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Mon, 18 May 2020 06:18:49 +0200
Message-ID: <CAJN1Kkzz52Gn2Dp8cpH9eMwTvqgvK0V=vet+7m+1TTOBkp_vqA@mail.gmail.com>
To: Raylynn Knight <rayknight@me.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_212011_825523_4A94F7B3 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] kirkwood: Looking for github PR device support
 reviewer
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

T24gMTguMDUuMjAyMCBhdCAwMzo0NiBSYXlseW5uIEtuaWdodCA8cmF5a25pZ2h0QG1lLmNvbT4g
d3JvdGU6Cj4KPiBJIGhhdmUgdHdvIG9mIHRoZXNlIGRldmljZXMuICBPbmUgd2l0aCBXaWZpIGFu
ZCBvbmUgd2l0aG91dC4gIEnigJlkIGxpa2UgdG8gdGVzdCB3aXRoIHlvdXIgcGF0Y2gsIGJ1dCBz
dGVwIDIgaXM6Cj4KPiBTdGVwIHR3byAtPiBVc2Uga3dib290IHRvb2wgdG8gdXBsb2FkIG9wZW53
cnQgdS1ib290IHRvIFJBTToKPgo+IFdoZXJlIGNhbiBJIGZpbmQgdGhlIGFwcHJvcHJpYXRlIHBh
dGNoIGZvciB1LWJvb3Q/CgpFdmVyeSBwYXRjaGVzIGFyZSBpbiBnaXRodWIgUFIuIE9yIFlvdSBj
YW4ganVzdCBjbG9uZS9waWNrIGZyb20gbXkgYnJhbmNoOgpodHRwczovL2dpdGh1Yi5jb20vQ0hL
RFNLODgvb3BlbndydC0xL3RyZWUvY2hlY2twb2ludF9sNTAKClUtYm9vdCBpcyBidWlsdCB3aXRo
IE9wZW5XcnQuCgpQYXdlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
