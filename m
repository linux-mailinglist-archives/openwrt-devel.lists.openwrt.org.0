Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FA317E826
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 20:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wMQgkpeR94R3BJrmQBhMRDb2YiUQEpBi4clshHy/580=; b=JCL+3nOOOKL37vsebfNJrhCZ1F
	vBanjjbahA2XefcAQEqnA6BV6HlgYbhnmQlTNQg65d1ee1ZZFKEW4PhBVGQ28l2vtNOiw4n9+gd0o
	b69OyVshdfZLKfNCfmjS7AHxKzqv6sc/T/ZUAPVM6AOATq9u3ZreQtkNYd3ZNsRqxY+uJAaYu7uOU
	9lmnjHWSLYiTq2wOvRQL3wl/jzxNYyZLHEVS/mUWqwlb8tPBHeE9j7qskzqnVGJJNGQpxOS8P+bXP
	0eAoZpklx/Q+jotg0IAjllcpMfNAE0JMw9g5RSq7+n1z4MJrsd9rqhuRXtAAx5DaT12IGAKaCmRxN
	Qv++I+zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNvC-0003Iu-AN; Mon, 09 Mar 2020 19:18:38 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNux-0003Ai-Qt
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 19:18:25 +0000
Received: by mail-wr1-x431.google.com with SMTP id l18so2597688wru.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Mar 2020 12:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=qEVLqJ4syEywC1t4HvjbZDvQFuXbFzVMcxPp3wpoF5s=;
 b=NFKQFmtlCAkoODshA70n43YIQRcqbSINyjv+bEALqnKhnJOoHKqWHtURLDX/lXwJXw
 h2Z/P45zug+dxOx9OXmock5l6hxAo23i0Tnx8PH8SZnJOvo/b3Cyr5Q3UFi9zWkimkiB
 Cevm7pub76lSx1+K169tIdDzR74peOxmgfacErpTbGDPkLGOnWaRbaetkLZkdYqbkNzT
 EXXHNc9oIMndguzvdyQxaANk4lKCP5RzDylQUktAVFA8OE0UB9QbE+/iSCOQVQ8ThODl
 QG4RB3DCW8DczmEOo0IZ1qIej8dVfUkmqeMZsVcVOY4bAJazxZXRUduR0MS1VIadBMFM
 O2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=qEVLqJ4syEywC1t4HvjbZDvQFuXbFzVMcxPp3wpoF5s=;
 b=LmheTf6EKhr265ZnzCSEVTKjKRAtK1i01ZTirw/9p2KRrGp2AGH71yVkXw2Bk8Rm2A
 fndtmEmhoFmFEejfw/OXvnJTZ38WRNAfLYPyuIQAC0ONtYKznI9ya2sgzJS2rYTgGvom
 XrkJUPWl/UVZsTxdf3LSsp6IxSNNLDEKDtjvkKWUTZqQQuS0fTyfVB/5uisOUL7LHNX1
 vic7COYzg376GK76+IH6jUpxC15yB6tL78iD1XtKHtp7Z6RLQtIhZwCoh4kcR0hDGF7R
 KisyvIDYgKOWNSOlnn+U8LKBt6G5/UbFu4U7y/vvtpH2v7zxD5zeyMU1zESCklBV3ISU
 yrtA==
X-Gm-Message-State: ANhLgQ12g3U0HT/9VR6Ly+/Wwe0k7cT4ftmPSqUtkMX5TeELssT87MLz
 G6gpQplVSUJD7l6HvjGj7TXwW36noO38SA==
X-Google-Smtp-Source: ADFU+vvQs5gc5cpLGc4mUfqlWp/2PxCNjazVIhhahOfS9JqJouBwOTwsZgbMixit2NZ9qrXFkj7Q2Q==
X-Received: by 2002:adf:fec7:: with SMTP id q7mr7334115wrs.250.1583781499869; 
 Mon, 09 Mar 2020 12:18:19 -0700 (PDT)
Received: from [10.202.0.7] (d5152e8e2.static.telenet.be. [81.82.232.226])
 by smtp.gmail.com with ESMTPSA id g129sm740574wmg.12.2020.03.09.12.18.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Mar 2020 12:18:19 -0700 (PDT)
To: Tim Harvey <tharvey@gateworks.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <d3d03c7b-97bf-b480-de09-91ce9a730a2e@ncentric.com>
Date: Mon, 9 Mar 2020 20:18:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_121824_022812_74EE580A 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Quick question regarding Octeon-tx
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Tim,

I was compile-testing the 5.4 bump on OcteonTx and found a missing 
symbol for it:


kvdp@kvdp-BRIX:~/git/openwrt_staging/target$ grep -r "CGROUP_HUGETLB"
linux/generic/config-4.14:# CONFIG_CGROUP_HUGETLB is not set
linux/octeontx/config-4.14:CONFIG_CGROUP_HUGETLB=y

Looks like it was set enabled for OcteonTx in 4.14

Is it still a requirement for this target in 5.4?

Thanks,

Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
