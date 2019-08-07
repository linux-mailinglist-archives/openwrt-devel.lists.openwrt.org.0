Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BBB8538E
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTV/Cg/SHhYidFsjHBOE5sfJ2L4Oy+yIZhCAYnwNrE0=; b=bwbTgVre4jR7H+
	3oLB0lmj1g3TyjH96TR2nLGt0tCn9Gq+l0HWeQxhH9qo4X9aOxe7mzNljzpn+8536WknB17Pi31VQ
	JMV8iku5rCjRDaMul/jshlTnJdmN492WK50LVv0zZSxhL/Ny9o3DypwYXOf/SopvVwrGRGeAqAuje
	D1UgQgDhHKmSO/GS4PTq/ekJqAZSobnWcnbQFC/kgF+yFtRe4pgIsQkMPgqKlU7fHjCN+4k+Unozw
	3LJEFp59/eugLbAGlEOgI5h+K7NTcGT15bImDE9C8EiWt39TuQ/p8dNABuNn1nMFS06FuJHKjZ62k
	hakb/37xBxIG47pCS53w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRap-0006ZA-11; Wed, 07 Aug 2019 19:27:27 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRag-0006Xi-2J
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:27:19 +0000
Received: by mail-ot1-x341.google.com with SMTP id d17so108970351oth.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 12:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ITyIKxu99dmbcbjF+i+rFDJh3otoNP8uHmf8/1kJ0Kw=;
 b=e3lc5XEfCUjt8LA4Cjmg0PstA57GefIW1pPR01XwDXngk+4TPQ9w2Yv7e2YcDYj1OG
 YR8Sn2TTEvPBv8MSp0XOhuxH9Vm6HktikneYkE3eICeI6Ey1hF48lfRXi/0esPfk3cOC
 /tQPy/6CxrBvX8G/nty5QtWLU48z0bYrbVYvP6bXH2Dy8GI4GEZJG64fd2o3tlZ709I3
 jVmuxmHv4N1Gtoq22ZXLAZRTgpcVAdoZMHee4H8iv6EsMTCxn4U6Dz4NvnQlLycoTC0q
 ZdXXZpQuIQTPzg2VOoSz2aqiBampeeq0QDmYk4j2DfMySrPyem41Lb6W4Uy0y4aGfuz3
 96Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ITyIKxu99dmbcbjF+i+rFDJh3otoNP8uHmf8/1kJ0Kw=;
 b=tvcYFrDwsd2aAMA15Lz3geW17jXR44XHMVmGtvVDLMNf3Erc7ESD8KFEOVAZMGks9E
 uiMP1IW9wScWsdi7DLwo3y5sY+mNMGcihvcafqGjjQzyiZE/CdDV96z2aUo793C8zDVz
 J4ENWgsPkBejQonYmzAGVRuV8mzNTRNRdp/U8Kx616jnCfz6dan1m1XeEIa6ccoH5RNJ
 GaLGKRFttxqR6qEYOfpy7wTQuu4C5dsA1WMAVJy+bCpctJpCh/DtQABvlv0chVCyy2wv
 Rn3noaLrPmYkuvoVKhv9dy4PNr29W63Ftla9m9eygNr3roeOMKeEQTo361t8OClGe9rb
 KYTQ==
X-Gm-Message-State: APjAAAUNP0hBC7GyoTaZUpldG5IP+e18zdWtY6wuhkto9F88O7Sx82lh
 rMv8/3pIW+PuBLHr3C1Ua4w3NeoBjS5zppI4mcn3CKgr
X-Google-Smtp-Source: APXvYqyYA1VF2XZi5RhE9Lj6DDFbaD7OcDat9JkPQABtbFwCb6HWBeV2DQpSwa2e4UN+/veqFpAydK4GyeOAYe6/3sA=
X-Received: by 2002:a5d:8451:: with SMTP id w17mr11156149ior.226.1565206037179; 
 Wed, 07 Aug 2019 12:27:17 -0700 (PDT)
MIME-Version: 1.0
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
 <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
 <02a201d54d51$4a49add0$dedd0970$@adrianschmutzler.de>
 <CANoib0Hk6buOR9tJ5F+3EXd2c-MCGiE0X=M+Yg7_R_+fP5zWdw@mail.gmail.com>
 <02d001d54d53$6218e280$264aa780$@adrianschmutzler.de>
 <CANoib0HHTDNcBTUTK91s7fef5m8s=TnVUhb2Jg8UELbBKNGeRw@mail.gmail.com>
In-Reply-To: <CANoib0HHTDNcBTUTK91s7fef5m8s=TnVUhb2Jg8UELbBKNGeRw@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 22:27:05 +0300
Message-ID: <CANoib0Eyc3hcLg6M54M=Srax-Q0M=vJ5Hczz9_kZG3807UcnbA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_122718_106866_138EF6C0 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
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

V2l0aCBWRU5ET1IvTU9ERUwgaXQgZG9lc24ndCBhcHBlYXIgaW4gbWVudWNvbmZpZy4KU28gdjEg
d2l0aCBXTkRSIGZpeCBzaG91bGQgd29yay4KCtGB0YAsIDcg0LDQstCzLiAyMDE5INCzLiDQsiAy
MjoxMSwgRG1pdHJ5IFR1bmluIDxoYW5pcG91c3BpbG90QGdtYWlsLmNvbT46Cj4KPiA+IFlvdSBz
dGlsbCBoYXZlIG9uZSBXTlIgaW4gdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiBhbmQgeW91IGNhbiBy
ZW1vdmUgdGhlIERFVklDRV9WRU5ET1IsIGFzIGl0IGlzIHN0aWxsIGluaGVyaXRlZC4KPiBJdCBs
b29rcyBsaWtlIGFsbCB0aGUgZmlsZSBzaG91bGQgYmUgY2hhbmdlZCB0byBWRU5ET1IvTU9ERUws
IGJ1dCB5b3UKPiBhcmUgY29ycmVjdC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
