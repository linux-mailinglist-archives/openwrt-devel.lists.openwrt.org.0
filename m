Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3120699190
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 13:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4LSmvvaBa0DkePFBqisYQzrL9btHI/DA5xprA/2Has=; b=Jb3Upr4AvgbJ6r
	akeW/Z9JERIjPpWkIBpXquw3JGuwz3cPHpihFtFZrST6Vv8NDBsM6EMcLrG0uYnYNFaGFPyk4AM3Q
	QufXU67au4P3+uRy44yQ5xk6lGchbXLpSoKnp0/lBnw25ZWiFSkarZpohIGPHfhtqbDaVCYCVU4JP
	Qa4Kz8xqYgbXMjHiAO40SaOolarIt+1j7vORmfEj3ToZ9yZTDggd+DC8Dl5v0zXxekruqdueVu9cu
	ZyGcpvBKqJb4vYg51vREnrK2aJv4XDGyVM4LQUFmZC4Y9OnifIA5Aix+vrStJBHWRT9eBr7wTia34
	4VnKSWEujsJslJUROcFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0krN-0000d4-6u; Thu, 22 Aug 2019 11:02:29 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0krA-0000cm-Fr
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 11:02:19 +0000
Received: by mail-yw1-xc44.google.com with SMTP id n205so2212530ywb.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 04:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l+WUOagPxJDR40bo9iKvMsib7S/o5NBsoL6xFpMnaGI=;
 b=RX4nlq7No3j5KBE39N8Pc1GhYGOhRXdsUT96jlV3djhkC4kbtLfHGxeuLbo1T+GZ7C
 ARIjFMZk+8+kojyUjM/pxZXY49IR9HfXARoVsZQ3rixvRi+T9dmIZPHxGVzg0pxGcRlX
 ivsSgSOypwigG/CZda6tmvOh0uHDqZ4GMfL9/HSnFAYX18jFSDTHOgpMulLBSTbTQ6Qw
 ZS2UmB37+0dIcqNg8pD/8vvxXEjH+OaqLXUprfUQbcB7zUIfidcLircihtul5EriWpJM
 Zlh3sz23b8MUT66W/TokwH7qf7qqvPhHd8+g7ZC4AV187Zl4KxoTApmB6R0yN5TrcF4z
 vZzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l+WUOagPxJDR40bo9iKvMsib7S/o5NBsoL6xFpMnaGI=;
 b=S9eew2VoscA5Jt3eob+JZ7ljIA1u4Ceb/SWuQkIxAEQNGEDGtO9fCmwTc+8eshOvOK
 1r+rI9Xgn8arG6jF0/CTGGGWp9OFKIEIUQ+I7T89hGfVeYNe1BDx84r9bFHRwQ+SVCKZ
 xbzfy33Hh8tmJ6VOWhSZbQxBqaVWzBwgGC58vxD+ZSTNe9p+tSo3p4/Z6xX1g52ykpOC
 DwEyKxvpYu5OqamlXHbEYQr4acyVppSniVtBV/MwYr6pUXBdMFp7x39I1K8/tXppyDPR
 Q5tKSXtvoPSY/9Ah5Cdd4pNG3hkA4zno6QWZe37olikethVP8x66Ya9k/UVaoWdYj2E3
 anDw==
X-Gm-Message-State: APjAAAWGo4H1xsS62BuyBIsdoUIxCuPceHD8sa7vYPefIQrhZqJJCVmE
 eYfoE6ZPjuCiH6RptVhiOhgpHCttPGgKximYv7U=
X-Google-Smtp-Source: APXvYqz6lUijUIp0RKl/Yiur5y5CdFeri2xX/unR1dmmpmspGGna46jnyE3UgYMtbblikJTcoME3eA5GRudJNvg+QoE=
X-Received: by 2002:a81:1d86:: with SMTP id
 d128mr28126268ywd.255.1566471734440; 
 Thu, 22 Aug 2019 04:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190813165904.1988-1-fercerpav@gmail.com>
 <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
 <20190813182540.w4ee64he6hkteahc@home.paul.comp>
In-Reply-To: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 22 Aug 2019 13:02:03 +0200
Message-ID: <CACna6rxqFUqV8zKzdg8HGbYRibRu360L+uj1d8amy2ynqqzKmw@mail.gmail.com>
To: Paul Fertser <fercerpav@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_040217_856985_88A9930F 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 13 Aug 2019 at 20:25, Paul Fertser <fercerpav@gmail.com> wrote:
> diff --git a/target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts b/target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts
> new file mode 100644
> index 0000000000..a1963d0072
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts
> @@ -0,0 +1,146 @@
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"

Please specify .dts file license, see:
https://openwrt.org/submitting-patches#dts_checklist

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
