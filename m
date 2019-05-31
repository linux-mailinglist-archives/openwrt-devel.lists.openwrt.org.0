Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 757F831072
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 16:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dh9xMAHiJgdE5yrUCq/TD/SIFBcuPC2sy6gWk1SKjE=; b=KdreN7cK6CvCZP
	KpjsCn3Hwn8PCVjFeezlrM2ZHHlYr9YiMJHQ+GYZYOS/5dAFBr8rXTEHxypqmEks8d05peJFoqWKS
	xxQeCWVAJo4dLx7NhWKLadEt6nHJymCcMVcM16fNz/WV1NmUlR8gE3x2jacpTBkhqu56aPIkwwBH+
	fCWW09JA6ac/0pRBRzrjdx7xeUDDVcJG9W7N/pNE/ThK0pUEvImpCNSBUen1HTRzJWKbrpxwywR2f
	vPHOsIU1gKQIlnz/EQFlcYXzWaWF9pikegFx0MLYKNgT1JM68rcwLD8LKRMP/vcBp0rVkQjQsnZMi
	wdcLz99pX5im7mLiWcbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWimN-0004TX-M0; Fri, 31 May 2019 14:45:11 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWimF-0003p2-7c
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 14:45:04 +0000
Received: by mail-ot1-x343.google.com with SMTP id j49so9386317otc.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 May 2019 07:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PNXsxeI1CUmNddrADEVk489yQbLEs9gL/M2JIzfQTOU=;
 b=ZeQ/39wCa2BK3+/Olk3WP3UZWV/c015VVFb0KMpuQcof3bCBDTJj7rybn1Lh44Y4Nc
 Dbdm0EDpdEFkWPrBP6B8/dY3vjIXxlifwR+W/bSoVeyPHkxKf1AFcOPnstdnTrHjGyWV
 Bf2+NgOr24wAl4tIxtbsIrCd/dOLTBeYwGBLP3q5GCo1tn9Ynx6rksrUELlI/TWMSurQ
 91jAnfj4qs6GAGyMmdVaNXj3iBmfeSajC8EjMTn78u5EE15og0m8qbUr9svDFKp6klcw
 J/qRaf74x5zEmiOWBectIczgX7XldMh/dHSuPbfRmthY+tbyAohs+8p50ADB6Md6jbEw
 O5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PNXsxeI1CUmNddrADEVk489yQbLEs9gL/M2JIzfQTOU=;
 b=GYyrAKp+I65FIvXgx5o8bq/Hcbps3LbpIX5HWBtST2HEKv+xQXbONBtaWjGC/2evYP
 rZxDY3U0YT+vpNAbvx9Axfn8YNzz9CZ7PJDdZUDr5QalUMYRj/o4rb/lMKnZ3L7SPHzu
 s4vAzgwflWZI4cCqS9FQGt1T8p8YgAL7PXgx8dqdaA7boOw2WeKk4Updcm0C0UqKI/i6
 KV/HUkiqhn261zn32KeMFpZyl0cbCRGqbphmzImXX7KRnV9qQawAaTcfhFYiFmEnFxWI
 InOCIibt3qSQ+YRMph+/fqQ+cSq4J228Np/eejee/EZ+6Mbb7HM7wf3ffVS6irCEhCXD
 2EPQ==
X-Gm-Message-State: APjAAAUqbJzOzatrwu4U/VNylz7e/Gj7Z2tUGO1ijqq94h7GFJrXK7zz
 Z26E2LCd56yyJRgO9eWbjNMVA5sU0Ev8tfWg0vM=
X-Google-Smtp-Source: APXvYqzI/oJWnx/nkX+2CfFO3bmsuQqx7+rRTL1YU1nGUO6KUIJYQpxsFcfsOUeP6F1NUKVAKr6926a0x6RwznXAZiU=
X-Received: by 2002:a9d:3f37:: with SMTP id m52mr2069141otc.181.1559313901640; 
 Fri, 31 May 2019 07:45:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190411155945.28600-1-mail@david-bauer.net>
 <20190411155945.28600-2-mail@david-bauer.net>
 <2850061.LOaScECSic@debian64>
In-Reply-To: <2850061.LOaScECSic@debian64>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 31 May 2019 22:44:50 +0800
Message-ID: <CAJsYDV+yTFZafgzz0H42sfnzKYoB32ycxRBEht_XHXs4CzEcJg@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_074503_308699_351F9A17 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ath79: add QCA955x SGMII link loss
 workaround
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Fri, May 31, 2019 at 9:34 PM Christian Lamparter <chunkeey@gmail.com> wrote:
>
> Not to be a party pooper. The ag71xx is well on its way to upstream.
> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/atheros/ag71xx.c?id=d51b6ce441d356369387d20bc1de5f2edb0ab71e
>
> So sadly this all would need to be somehow upstreamed first and then
> backported again. *sight* :(
>
The upstream driver is pretty much broken on every SoCs with external
PHY/switch. Getting every ath79 SoC working with that driver is
already a headache.
I think we should just keep maintaining our ag71xx driver until
someone having a pile of ath79 routers get that driver working.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
