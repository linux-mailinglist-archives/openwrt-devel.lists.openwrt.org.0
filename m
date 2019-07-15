Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224F3688DD
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 14:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s/97Vb2lLz4/NhcpqrrRKHaB4WovbiIZm5CiHwkvZBo=; b=MQgdt5Xq1+pB9d7yhCcZB8m5/s
	/Rzz6henST+bYOJho6ZwhGaEqj2+mtriLz3kxBbfPvGd6EEwMmPqHtXPZR7+HPcfErosdUPeruXfc
	gHwvANFG004Kzc3c0rXFlh6wdT9Jo3hvDT8aErt3+Kqr227hlVXdQSl/3ZbG7IibN9eZGB58oOza8
	iIEfDUjO+7I/Tkit2PH39OOjKQZBgvEydRLTg9KR8JPsz0IAYTORkCihkRh3pO+53KIPZW7nQ/b6O
	Y6PARase9y4EnqjWfuNyPzNJW561tk1wTTiHxafTa2FvNU5Po71StI8pInSu8y7LieF8EX8DQxhH8
	dWwZX6tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn05u-0005Dg-FE; Mon, 15 Jul 2019 12:28:38 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn05j-0005D5-Nz
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 12:28:29 +0000
Received: by mail-ot1-x344.google.com with SMTP id r21so10675577otq.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 05:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=a7zSWaIyvExHbKTWIGtr82ZJE5PFH08zPk9ej1Zw0AA=;
 b=Dgjrz6BBCXUnElV99wLui4BrKig+URpTI7LkFQq980MdJyI3Sf69s7DjOKtTOUt4aQ
 dAMQv3MShH3Rc13IVpba6Fl1nmlaYeWw5lWtxlK+bViIYkTaAxcjzxKH1Z0zLZXrQzx1
 ypC4YV68GBPBsUz8QA5QX/RRtG3f+xjsae12b1TTeuprsBxa9/CrNkgWsgtyoxM7T8QE
 MbWOCOIcn3sKo/X25QjEz88P1V6/2sUJQVV56OQEF2Dbtu4v8YWKyTkvjDnP3Ktd3Gbe
 jBJuPy81oe3De0CG10JuHwkksfs3HyzXSDiDjWwrktQQ3lwuAktnhi6nl4cgULisNQmM
 CF3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=a7zSWaIyvExHbKTWIGtr82ZJE5PFH08zPk9ej1Zw0AA=;
 b=XQdcQx1kmrddfgap7McSv9NobgOHNWeaIOpj2Q2FN5CfhV58niUA+LyhRRlNzpqAQD
 TLXCmh217aEN8RUXv0Kt4wsxKi1DlY9RKzdkaHVdANVryiFJDNjab+J1P1M+xl3BM4/5
 dTdAk6Bmj1dp27wthbBvQSqvmqcbITkjhkTnEMcQiKVnmzyQbytKC+0C6VtzVpeybc5j
 hPfd9Rl1Wb+5anR3WGrkEYmzsOieyxhv0392wipm7Gm/szWXbPMuv/HGIvoZ1TgV86Qw
 GUzgrOqng2ofUbAZbmhp+MGpwOrx2u2wD/mJlesnWjT9SpuRZ+fJJ8SCPsqbJIGQhjBZ
 YCzQ==
X-Gm-Message-State: APjAAAWF2yhaj9n0wVo4ZAhp7SzWjlCevaRM058UDByeGJ7LiMKqJJ4C
 VtzDL7X07F7czsllWJIDxBR318Z6gg8UXHjs8RWN70Ix
X-Google-Smtp-Source: APXvYqyd671nG2ctIMuZiSgji8uN+vMUc3Bl2W5Qm8JJVQeCj9Jgc/PV3AarJIBQEa0Kl6lxsctfvHmlU6noIAik0/g=
X-Received: by 2002:a05:6830:1350:: with SMTP id
 r16mr1137377otq.84.1563193706395; 
 Mon, 15 Jul 2019 05:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190715115342.4190-1-gch981213@gmail.com>
In-Reply-To: <20190715115342.4190-1-gch981213@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 15 Jul 2019 20:28:15 +0800
Message-ID: <CAJsYDVKcUyCtwm9+baAqCh8cEnXNM=CtpOKAFhwdEH3JKmGUdQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_052827_808270_CED553B6 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Qihoo C301
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Jul 15, 2019 at 7:53 PM Chuanhong Guo <gch981213@gmail.com> wrote:
> +&builtin_switch {
> +    pinctrl-names = "default";
> +    pinctrl-0 = <&pmx_led_switch>;
> +};
Here's an indentation using 4 spaces. I've fixed it locally.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
