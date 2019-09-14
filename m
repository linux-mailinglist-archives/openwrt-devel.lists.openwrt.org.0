Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBA8B2B11
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 13:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAbzWqBkiXwTD6Yi1NNBlF69G+/P0nkcrNxeEqTBMhM=; b=i7WkwtcvRL4qX1
	ZTA+J+hKTYhlDBlWNp58ecKWpmsV0uXgYS5GIVNcuwIvjG8mGrKYuyIUsbZsvZGlTNdODrmWbTmjq
	e6vLmNkIlTVFlYg1ZUsfvljsytm+tmvqhbHXXev/2145NgPGcm+1DZjdkdYME0EXvJUN5tZdUi2pC
	EAp7Txq3CdBVr8TCFXu1yADwY/eOkaSyvtFNSCMxUXOsGVXQQNm6MN51E4dggSHbmmQ5faWcZvOhQ
	dAJPINr59DYVGDPZ3DZI8dTd8IbSXbRmvUI7WgeHw5yy9XMu3Ix8ykpdi3VyCpjONRM7pDc2lNzTm
	7fVjLbfel8NExSbuws1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i95zJ-0004Ju-QB; Sat, 14 Sep 2019 11:13:09 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i95zB-0004Jb-TR
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 11:13:03 +0000
Received: by mail-io1-xd33.google.com with SMTP id d17so46427372ios.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 04:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yrHqBxVPmdYzfY8KzSmhbZ7+XqPn8xuf3xIWVTvJFMg=;
 b=gmbEP3sEtds57KZWYoJoIKoUFIxv8LQA9sWd606N8qmHdSiE+U/5EfcZHTZZinEI4u
 29FPpceOidrURWRmQRvZbCbA9WPUuMEjxZssX/2nZhoJoDXoavr8eTUleUBbnhDrcHgW
 ndSlFwl+KqftJxN0wECv9sHXZ/mmg7DQsAtfwTyncD003VP6vAYZ7dO2To0Abad1zWXd
 UTXyl4S2hG3HYEHGeonZ0z6OUSau/8sXdslGzNd4ZzEuZqbpua0PWdRlqVwVLgppvkop
 tGEmsV8LlNnjhFb7/OrI/IkyS95EPmUtOGqfJs1qt/oWypqlqI0X+OOkCDf6rpnbltrV
 f63w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yrHqBxVPmdYzfY8KzSmhbZ7+XqPn8xuf3xIWVTvJFMg=;
 b=B8OLwvQriSH2C/mdjoLDvKZ9vCTOZhhTE7Qt7H8/dbTS1p2TQMabuYOxLfq/puH8oH
 zXaPD134Ww11S855KVxsKcyS7OHOYRH5PjbeYCGoZlLZ8h927BMCb1NbPEfxE8OiZRhZ
 aSLr1JoaADSuHBsuMrvXLQ0vxwC/u6o0hCjcgU0f/MAV4ma9pd0WfrI6f4khdhvpLQhH
 RDWKDt3HYSJXsB4e1euFL9n+f5JIa0fjSLTbDZC0Ufy90Nrc96ZXt9QQmUP9ShUauG5T
 zvkcImrnUGvpCVdKs5uoDd8OjCitp87PgFkPm764qksW6d/iQc0F2DDCz/FRtvw361DH
 zBSw==
X-Gm-Message-State: APjAAAX3vi+jTtIJXtCmzQFc42LNEUFos/tKjyCLqqnJoZZyeslOiszH
 kdq/4Mu4FV9EQaeXFhu1fmDrAYCT2AP5jN2g9n/fDsbp
X-Google-Smtp-Source: APXvYqzW/zm2QEsyGjPM2lTGdR5JjhoTcIuQ5YOFOyA0u61p4pHDqz+Uxd1lKBcHxYLMWh/CwfWXyNYNzQRS/IQXGBI=
X-Received: by 2002:a6b:6013:: with SMTP id r19mr5163542iog.94.1568459578588; 
 Sat, 14 Sep 2019 04:12:58 -0700 (PDT)
MIME-Version: 1.0
References: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
 <094d18fd-ac5a-3688-95b6-1391f39fe113@gmail.com>
In-Reply-To: <094d18fd-ac5a-3688-95b6-1391f39fe113@gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 14 Sep 2019 14:12:46 +0300
Message-ID: <CANoib0EcEre4MRk4-d6Nz2Cm0MmzEMdMXG1zoddyfvAS2xHekA@mail.gmail.com>
To: Magnus Kroken <mkroken@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_041301_976419_E81F9176 
X-CRM114-Status: UNSURE (   5.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] kernel: bump 4.19 to 4.19.72 broke ath79
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
 Andre Valentin <avalentin@marcant.net>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> 2. It modifies arch/mips/ath79/irq.c. The patch that fails on ath79,
> 0027-MIPS-ath79-drop-legacy-IRQ-code, deletes this file completely
> (which now fails, as the file content is changed by
> 343-MIPS-ath79-Fix-potentially-missed-IRQ-handling-durin.patch).

I refreshed 0027-MIPS-ath79-drop-legacy-IRQ-code.patch and now it builds OK.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
