Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F74BD7E21
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 19:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZ/e8OkFR78PZTe0buw2khfXHRGrqLx1IG501VIOYzg=; b=V405Ft3HKYep5d
	X7IzNvvveEnRxiU0U9zNdqGnZpup+EgzkgIJLfJBGEdv4nj9dPs1ruQKg+1djFYWb9UwOdSAOzgEU
	P5F98fJk4a2eAHZtCg8JW3ETa9XkAOXLzIviu/Tp4jo5mRApnI0F+UCrqk9xX7TrXbXtw4eQGXf1f
	1x4uQqgaEU/QzD/juS6kqADg4Tj6qmP/DI+Z5VycHxP7Qx/PCqHige5jbok9ZgF5WFrCDkLJKgX9u
	SyXPi9PGiAWFFM8r1WhynpfeANUuDAUUWqMngkTvULINFp+0X1LvY49dtgD04Ci0aHeo45Y6t5iuY
	9XqbYxK2YUKq+6ZE1CVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQzM-0007LS-Dm; Tue, 15 Oct 2019 17:52:04 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQzE-0007L0-9a
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 17:51:57 +0000
Received: by mail-io1-xd43.google.com with SMTP id c25so47901975iot.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 15 Oct 2019 10:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H7vIvDJdJOjr8ZlKEIjq824F1jg8GnoXguNb7Esd4ks=;
 b=Ir3yPAH0+1hO8lKk2dJlPqIqsBlLVUIDYsZuvO1LNn6d1pOAqS/4yw/xvZqT37bMow
 ++pryHxpoj8E82V3ebJ0BiF67KVpeR1Bz6GSQ4Iz5BHVmGe58nhyRQkGlyn3MKV6oUrg
 b2N2m2oMYYm1o11zbuA9k0TIXwMv96aEBsqhAEO+Nm/eXxFqsdEpcpQR2G1crnQ70u+v
 6a0gdAStP2XHxdxJRMY1D7SbMebVOgJ2N7SRAOzAQClk8z8rm1vyqci5ZN36UjXu/aqb
 1WZPp29LNEayzXFYe0r9UtfWa3LmZb9a4jZ/sChwH7KOI6h5KEJPPJWL7OedF4iHHbTq
 ZixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H7vIvDJdJOjr8ZlKEIjq824F1jg8GnoXguNb7Esd4ks=;
 b=lrgZQYz9cKQFT51P6neGtvnsM4jvRNG7QH2Z8w/iEsqc1q5ZSuXs9p/myYjHtIrE3b
 oU1D29hEP29qkfcLAXjZQ4X5wLr/k4B4HPNNPcfmNtKmLFcwotyDSdVGkJjF0NZfvakx
 Ba/vWg8ngyYkBWbVRisfv9jAsedOv+V5xo2Csa9PO+qokkyZBeCurLWlG+7/yoxpjsvh
 4LbtXtmm+WA20AKmcYuw8iNQCLc6yW+MD9rTW8USxnXV7K2274vXYB/sGOzpyZ9dV/vI
 AdbfCZ0PgHKiw2YrvtaECPSQoKCBFsJupC5BTE8ziLJ2rEJm7d9hmtwq6oYR9vghMryu
 GnLw==
X-Gm-Message-State: APjAAAUIOjBHWxP5LicoBtRZ7uyx5MaAJdSQVuqoiRVpUzAkh9mNhU0n
 ON2YcvtSplHL0/eQ/h5LAX1+poK1XTgTBaNjJjwHqm8EnBU=
X-Google-Smtp-Source: APXvYqyLsjvkThr7z803E4rLdt+i8NL5//HywbM7MH+rd/4YFhpixbgRhKgoAYHO0Z4ms6J9WHQ8qhUmIrGc6my2fGQ=
X-Received: by 2002:a02:7f16:: with SMTP id r22mr26469966jac.83.1571161914859; 
 Tue, 15 Oct 2019 10:51:54 -0700 (PDT)
MIME-Version: 1.0
References: <1571153708-22316-1-git-send-email-dan.haab@luxul.com>
In-Reply-To: <1571153708-22316-1-git-send-email-dan.haab@luxul.com>
From: Rip Route <riproute@gmail.com>
Date: Tue, 15 Oct 2019 11:51:42 -0600
Message-ID: <CALZrXO=0aqsJC75Bf5o3SGVpw217CmpkFTwVoirdD-qxssPsvw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_105156_364550_73F981BA 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (riproute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: sysupgrade: support Luxul NAND
 devices
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
Cc: Dan Haab <dan.haab@legrand.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Oct 15, 2019 at 9:35 AM Dan Haab <riproute@gmail.com> wrote:
>
> From: Dan Haab <dan.haab@legrand.com>
>
> This adds support for UBI-aware sysupgrade using Luxul formats.
> ---
>  target/linux/bcm53xx/base-files/lib/upgrade/platform.sh | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh b/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
> index 6b12c84..1686462 100644
> --- a/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
> @@ -402,6 +402,8 @@ platform_do_upgrade() {
>                 case "$file_type" in
>                         "chk")          platform_do_upgrade_nand_trx "$1" $((0x$(get_magic_long_at "$1" 4)));;
>                         "cybertan")     platform_do_upgrade_nand_trx "$1" 32;;
> +                       "lxl")          platform_do_upgrade_nand_trx "$1" $(get_le_long_at "$1" 8);;
> +                       "lxlold")       platform_do_upgrade_nand_trx "$1" 64;;
>                         "seama")        platform_do_upgrade_nand_seama "$1";;
>                         "trx")          platform_do_upgrade_nand_trx "$1";;
>                 esac
> --
> 1.9.1
>

Signed-off-by: Dan Haab <dan.haab@legrand.com>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
