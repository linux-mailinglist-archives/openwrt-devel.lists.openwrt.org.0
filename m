Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033EE133BD
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 20:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4Ll6tnqRG2qvgMU0xTSOimGrKO9w3wvYLNzgLPWbt8=; b=DLFrvCIsCV0O7T
	C6RdH+Y9pkN0RqusTv0IFCcErYIcJIA/AuKxk/o5ZJ4E6LErnhtmPpQP/3dB/CvEeq9l85Fgprtv5
	cetv6n5P+a3pjAZtlJt0LMBLc9XkFqCp8rs/zMh8rg2frQJzOfE9hTP1uYtBfhavBD8mEvzow/Se8
	tUCoo0QMWGGdwRKhJufCBATerwKP+s8o5h6PpGYaI5qVgEtArVqW6QYBE+9EdjAnb1GH7gjwFGYTS
	ebK2GJSF5vqBOlwwM6pGzwLFgy001Xhxtt4nLdZryqzmEgwHNKq3TTc8xAMYKTn0tPBtKpZTw0bPp
	5a32TVXzjVx0kGnSvngg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdG7-0002kC-M1; Fri, 03 May 2019 18:50:11 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdFx-0002LX-Ib
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 18:50:03 +0000
Received: by mail-oi1-x241.google.com with SMTP id k9so5140765oig.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 May 2019 11:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=U+gLU1KqfI6JEvPOrAjtsdZsaPlHfySlufYhPdCoJrQ=;
 b=s3o6p/+WWuYH30+E1tbkKMmPuoAj2tTvrpRUOAynN0IR0l/iUA6KkX0/ICE+9sIgEg
 YO7R5uNVvNMoXuYlOI2e4nyaCvCq8PoQon9gnx5WCK4zB9MTnhQqw/F9aMFk0+GnMHSn
 03h5WRf1QJCtjoyZYnXWCszVPfnyLBO/jl1djrb0bPu4ZmDJHadfBrLwRxtoaI15T44W
 St2RzR07+jsB7HnBNTEe5dEhwfc0ZiV9vpAInWebNqPR26OnLX1VNcJPELEp4arsTgz9
 qjR2Fi0joeaNRK0DgX0ug818uiLcX4yMSe/AmoCbQWwfFNYuHBUXxwoOYI0I5MkmYT1x
 6FLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=U+gLU1KqfI6JEvPOrAjtsdZsaPlHfySlufYhPdCoJrQ=;
 b=eLZXoaWFaVEtJ1wJagYe+Ak86vtWKmj3yhIXYt9LWPeb5AbWVEx2N/W4rsHXiZIroN
 cGdJyIC9rGAXg032UacycEylcqRxiTmYxvDjyJyObffo6TgcfTHOWeFQDO6nsnVlS/L4
 ZWXM1O5XbFCcZpT42L0wrJASENGhvDkpq6VCzCDA3ejccJecXDM+Ox1Lrso3NT2Z/VsC
 tno6r0MStcD4pm03vOxn5R3QazLiLlkWLtsRSO1LiZxpp1/D/CRIZkFJbhxihRhFytzu
 HVBLx1/dyvyi6VwzyMT9+G9MBdTeSy9Gg/1YipDcpFgQEzeEV4IYq7faH3MVVeK/MXJT
 7W9Q==
X-Gm-Message-State: APjAAAWF2kYUARFd0CK/x9fAFbIV+JTqy8TrKOKGxlQYMWxsmyD7Svx2
 mB2Byb9HkFIi60r/sQdigXrA1cv1R7noNF7WCqw=
X-Google-Smtp-Source: APXvYqznCYFrCzkMYD6popybAhh3lTXTbM/Wv5JWUAmGYpt1NRiz5iqt3w3JLJQ0DbdpuGZgOTIfYeCOVdpX8wI1Z2Y=
X-Received: by 2002:aca:d5cc:: with SMTP id m195mr91189oig.167.1556909399341; 
 Fri, 03 May 2019 11:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190501170810.5230-1-rosenp@gmail.com>
 <20190503115015.GA71477@meh.true.cz>
In-Reply-To: <20190503115015.GA71477@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 3 May 2019 11:49:47 -0700
Message-ID: <CAKxU2N_kouAC4fhpnw9J+uSeZVE=QdrDcnTmQ45Xk7-aK3iVqA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_115001_619936_7F5E045B 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] nftables: Fix compilation with uClibc-ng
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

T24gRnJpLCBNYXkgMywgMjAxOSBhdCA0OjUwIEFNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+Cj4gUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDE5LTA1LTAx
IDEwOjA4OjEwXToKPgo+IEhpLAo+Cj4gPiBNaXNzaW5nIGhlYWRlciBmb3IgdmFfbGlzdC4KPgo+
IHNob3VsZG4ndCB0aGlzIGdvIHRocm91Z2ggdXBzdHJlYW0gZmlyc3Q/IFRoYW5rcy4KU2VudAo+
Cj4gLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
