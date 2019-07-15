Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CC8697F4
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 17:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39SoHjboorXS4ejPsQIA8qDiwoaEnjXL5vpkb0XmQrs=; b=caBnjTMopZob3Y
	goSqGJgOa1ba5nGa/RrdmYFl2kDEY0WaSeX8vm8tCeTRHvjICblSffSssdEBdWlsp0UJ75WwMbVGK
	S4wiAWipH95sewm8O95q9tM48EOJOA0PY6k65FdpKRlXA/YbKPPWAZSDFU5bjqGtQUpjPF4zbUguB
	eDgYL6DZjNZ2a5Ple/AvS6glyvnH9OFxq7sihEvbwKonyRtuvd1CI+PqbeTpkfD0/VVjYIh/0EPbz
	9tL5jQNOdakvvnBthWK8Gi8q4Ei5PWpVim9e8bwQPw0+GF5GRqloQo+KP0AkAOF3Zg0mRSUZGQXBd
	OezLs2LIGvTcUaXfOVgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn2g4-00063g-6Z; Mon, 15 Jul 2019 15:14:08 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2fw-00062Y-U6
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 15:14:02 +0000
Received: by mail-ot1-x344.google.com with SMTP id y20so1417269otk.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 08:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZVOYElfnkfahVDAandkAp/Ni0fXXXA1X5rwt1Pg0TzE=;
 b=K5JrIMvCU0F6pTtkJ7bZmF4cd9acOevsXqVr++NZF/3aC2g770is44Go9K2mM2LPTb
 66rGh+q4s3HJxIcUic/mW5l3UeENbGwbldRGxZEpq6O1R2b7ntbLB4a8C1K4SljRFhut
 7U1BAR50WBIfQqFLWrpQZ7q5kLUwTfB8twZV0nROW78SOOYxPOWo9JEIuPFUkQGs7/9J
 9pHBY2/BNiJKI6UWReYhBdgF1uQi4nbAHEsykhrWtHtePH7wotylHV3I2OTPYAYuCQMl
 WICLq3wpEIXhQKPnDR3V+TumyUjdG9fG/IzYzCa3nn+6MVloj6PG1QVqjwyuDFTAgDFm
 ugGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZVOYElfnkfahVDAandkAp/Ni0fXXXA1X5rwt1Pg0TzE=;
 b=QDCY9Du545Rod1WpO54xKxGf4Gz/E5dDF5DJsq80DuBD6dBR9sJ04KEyRxZ4H8TnuV
 B8F5+p5ettqAmGMmVXXA4DYHKM18vntDxdImcnpYL+kkIcpAnSVhtE+zjvYARUD2CB35
 PqaayoLrsztdXFMAYn8kEzrzzr+JKyVAa/iLMKYqqY7JrS0GfvAT4TlaFzxamJQT5q6F
 7fB43HcCzEKwi70xHMemR0K4QMOA7SFolRph21kVtYFuorj3o8Is+mCwG39ZVXJLAmvd
 4Bc6ClN9CeDXuEQ12TUMJ382Jv0ZjIWrNtwTpS3d9SLXzyJiRwr3Icx4ezkekYum5Zcv
 BHqA==
X-Gm-Message-State: APjAAAXliOlEP5DYEDBXqO4YEnEw5JMU/71eEURjKhH42VSJv6g3Phm/
 2rwOiJzyVYiGKwGBg1DL8Elg2NCKGKOOXcKWWj98Y/+CZeA=
X-Google-Smtp-Source: APXvYqxOIWpVn+XRyuJq2OMtIGKbkhc157JGUNzHomw/1GsSN6hvlGiXOQCks8hniytdgY4bJ12tC4ukls0jc5z0JrI=
X-Received: by 2002:a9d:eb7:: with SMTP id 52mr18840028otj.70.1563203637200;
 Mon, 15 Jul 2019 08:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190620225754.1685-1-jstefek@datto.com>
In-Reply-To: <20190620225754.1685-1-jstefek@datto.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 15 Jul 2019 23:13:46 +0800
Message-ID: <CAJsYDV+5P6kf=nsXdbSQ4tXN=Xg7MxYwi61kQUYUWWriamZFCA@mail.gmail.com>
To: jstefek@datto.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_081400_967258_1E98D986 
X-CRM114-Status: UNSURE (   7.32  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Don't override the bootloader
 cmdline args if none are provided in dtb
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Fri, Jun 21, 2019 at 6:58 AM <jstefek@datto.com> wrote:
>
> From: Joe Stefek <jstefek@datto.com>
>
> This change allows cmdline arguments provided by the bootloader to be used
> if no cmdline arguments are provided in the "custom" section of the device
> tree.

I've dropped the entire prom-fixes patch two weeks ago [0] and I guess
we don't need this fix anymore :)

Regards,
Chuanhong Guo

[0] https://git.openwrt.org/7a8d3432c739c6ff038295176e8b6324e92fc116

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
