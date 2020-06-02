Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D511EBE78
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jun 2020 16:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zZEI3n7OHspwqJV1uIojQKORRuJg/duOYwpQt6oBe0k=; b=cMDUScK6Ivo7Q4h7quV7GA+KE
	o+JHgk819wF3L4WQY9oW6oIpGLs9evhpGBRekbqhdeOYc/bqAEA1lkgzyoP5N0hFfGT9sIDqyNrO+
	PoRxZbBiwWVOYyjQrd6k3lK/brCt5DjQpGitOGJB8GiPKuqEZCvzUQ77d7rzoD9wfe2uNYsgusK/O
	jcbRHUbFcBT+Bsi7QUHV3Th4pPYxlGBZWC8Q4oHr+McaZ2PgwsNfqPGOFDshaPbRXR+Vnh0T9M7c8
	GBSsY3E5VutYjCufh/9jMDbFSoY9WgSM74f2NZFExnzThOVkb1/JI5QVawivuzCA6uix6Yjb0wx6v
	rVaXML0Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg8ET-00088G-Am; Tue, 02 Jun 2020 14:49:37 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg8EO-00087o-0t
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 14:49:33 +0000
Received: by mail-ej1-x62b.google.com with SMTP id f7so13033741ejq.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 02 Jun 2020 07:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=WVbNLmXcG+SSFhz2LICnfZ/kGI6vyJT+rvATofDwy6U=;
 b=fglTjmMWjOt9wHMme9OWDLzTahnaEye89JBOhiPfDDnm4C+Jg8cyM5lMOVR90RYGYb
 pZKAaxgFKr6+cMykZZ/8MxsyIIPKj0Bf+aimhHGWeTG0AISt2YiOtNpUm53Yh+oCquF9
 HsQ7wzn/iYoAWy+NU5xu+Anoxg4nCpXmt6Y+3p+yNaMcadm090s9ja2m8weeWZKytZwx
 7exnbUjlrO3l8aWkT4BfNZTedU4JV0A1KpoZ1KFCV+HWH3eCo/IAdC1HzUCU3Uuljf7+
 3F2VU/UN2pI5vSgsFzeCo/PuZp3R1TXskATRv+XTDRC3VHXGhKfrrheuOiwCwlcAJAUw
 wqPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WVbNLmXcG+SSFhz2LICnfZ/kGI6vyJT+rvATofDwy6U=;
 b=p/Ucj3ugicPQYDW2l8vPYk9Y2hjTmlbgvL0mWaztUDM4r9YtxaSLeYQlWKx45izsxl
 jx9NC6OaIaVFbfQ00Gc93OqjOOJn/yooY+qoG4qByIZWQCUxQGdpNAhe9fN+fOrO+xUa
 AX8EoT5FQ/1v1hOAVDx+IyMHXGqegSSgL07hbH+8LYBj/QRYeIYQmanX6KuJZhfyhOuj
 csLOj8ISD6jVG4Si4Kb66z7NEVtV5Ei1G0eQHUI6y9wLitUZV+TzgHMK5moi56Azn4uN
 l5aQUSqR7/nwxEzxyJcZALa98bTebnDE44MXrhrULb0SLd2zKkqAKJ9Wcg1ItKCQgXqS
 UsUQ==
X-Gm-Message-State: AOAM530BPdX2Z3itynV83Rk1oijwpC70Ih9IxGSmJHfew9pE+Dxbnooo
 ysPPX4VHwlnViA5kiE3TM4tTRnKr
X-Google-Smtp-Source: ABdhPJwlhp7usxJxALUhyiQ8PUph61HonLZ5NmJOwvGC+qC8zM5RfFqh5RA+9D08Zqk3P6djWy4V/w==
X-Received: by 2002:a17:906:d9cd:: with SMTP id
 qk13mr23473288ejb.268.1591109368490; 
 Tue, 02 Jun 2020 07:49:28 -0700 (PDT)
Received: from [192.168.1.230] (pa-18-171-170.service.infuturo.it.
 [151.18.171.170])
 by smtp.gmail.com with ESMTPSA id o13sm1710030ejb.46.2020.06.02.07.49.26
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 07:49:27 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <BN8PR19MB29794D50F61BE3BC66C40F54B78C0@BN8PR19MB2979.namprd19.prod.outlook.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <268fd91d-4884-67d7-be7b-9b8b5940c4b8@gmail.com>
Date: Tue, 2 Jun 2020 16:49:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <BN8PR19MB29794D50F61BE3BC66C40F54B78C0@BN8PR19MB2979.namprd19.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_074932_066377_BA74F0CE 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] add support for netgear R6020
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



On 30/05/20 13:37, Evan Jobling wrote:
> Hi,

> 
>  From 8a2cf974be374612e8ea32d2182226d542ebbcdf Mon Sep 17 00:00:00 2001
> From: Evan Jobling <evan.jobling@uon.edu.au>
> Date: Sat, 30 May 2020 20:39:47 +1000
> Subject: [PATCH] ramips: add support for netgear r6020
> 
> Signed-off-by: Evan Jobling <evan.jobling@uon.edu.au>
> ---

You can send patches with git-send-email (mail clients tend to change 
formatting and that is bad).

Your patch/commit lacks a short description of the hardware 
specifications and instructions about how to install OpenWrt on the device.

See the full patch submitting rules for more details (1)


1. https://openwrt.org/submitting-patches

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
