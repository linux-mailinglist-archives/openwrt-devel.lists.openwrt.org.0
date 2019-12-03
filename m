Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE47110FBEC
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 11:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yogw4mjl5Of9/DagA4hJ+IbsSMFTUT71YCbF3TRGOTw=; b=YE51lc+86sCQ2O
	6SLFFWzRdYVPmM51CGI8jHC0j38doy0f216SVqxlW/vCUO4ytnFH8qKrJgfJYsAFD7Im24lUm/k9A
	+7IW/xT349ksM7pS91BlUIgGEDYDA0NxIfL5BByQAIVV4Xkt34vZxyseBxfgeoDDDJ3Jw4+Wy/fQr
	kkZGT/b2GSRhCMxBN0+DbhLnpUHXInd5TOiKotShfeikZohVSz5zBVX3Gi0MJ3TB3TKPpyqwFWpCV
	a+TrSImv1cV8R2cReEGwP/CrOvFDqIGGykYPowy0EQNTdNmwvT5xQPdoetzR/2qetDInsB86QAvad
	Vpx3buhtia4i+HVi+YnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5gs-0003aV-2i; Tue, 03 Dec 2019 10:45:58 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5gk-0003Zp-KZ
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 10:45:51 +0000
Received: by mail-ot1-x341.google.com with SMTP id 66so2453650otd.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Dec 2019 02:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=l3GYHRHrgUbzGMm+lKRj29r9wfIzN5IBo/9SnT185jY=;
 b=SZmJCb5vcfjs9X9os8Ja3fDQ8c4hXadv8RK7O+V98s8k0hZiIgw4CzqL/P61198twI
 kjtZjpU5rxqGp+MfWAy7Eq2hr2Qm1XjCDgmaN7ljuYR8MZQypWsVhsHZFBdaxMHtTCqP
 h4VVH7mmptFyrAg76zj5mtKtgIwH1bgcUTBQv+J7GhM4/Q25M27ACZkr1I3zaSODtuum
 Y6cCVp4aXbTq7snuebHY6nddAcsD7fs3yTyVOFxKdOgINHMzdV9kukTBUWfmwfeqs0Mk
 oyCq1H6Nrr+G+HEwooYMCQuGTgBcZZavUYiNpopwX+Gh1xVXC3VVNTwCEeq5RY/jDMKP
 e27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=l3GYHRHrgUbzGMm+lKRj29r9wfIzN5IBo/9SnT185jY=;
 b=XafmJzFTJduOF535GuuyslZBBuHKqkOCI6pcnC8go/HD9Y76KDNz1qqc5aW1wI8hvq
 0Cft50jLx8jcK8zERAl0a7CR2nhq78zKYeqtbQevEUcpuzCfciLcgSgWGfgznC/he68S
 diaMSnW07GN23Wy4QPk5qAn+w8GDLp73+0D30TEpBrqLPnIdGzq/ZQz7k3/8636dwzxR
 k+O1KNiRdWt1UZ9xDLh8JnRAJJrNx7I828bnClBHpCOqyZygaV8T5pJfUbEXoYfzXawt
 tAbouWZ1jQeBqpvQOLzeiU8CQKkrcpSoeQ2zklKw+X62dz1ns1H1SIpy2NipqcqZFziQ
 AZXQ==
X-Gm-Message-State: APjAAAX+O4DDKYKKyOxct3gy+NEDSG/mW8ZAklkIud5o8N3r28jVEFIH
 UDZJFh0wsR9SVVgfBkDdyuZbf+MWvgappYvSxW0=
X-Google-Smtp-Source: APXvYqw/zsXBtn0j1LoHeX/8SCTJoGkdXE/rAZrMh6PrPBtd5zlJVPIqzXmhiGjXANvTZ+AneTdRoyqOklaISDh1UKY=
X-Received: by 2002:a9d:68c9:: with SMTP id i9mr2458310oto.265.1575369948914; 
 Tue, 03 Dec 2019 02:45:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:384:0:0:0:0:0 with HTTP;
 Tue, 3 Dec 2019 02:45:48 -0800 (PST)
In-Reply-To: <6e48f0b6-794b-5d28-708f-f6d26204e33c@linux-ipv6.be>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <000801d5a96d$5e3d4220$1ab7c660$@adrianschmutzler.de>
 <6e48f0b6-794b-5d28-708f-f6d26204e33c@linux-ipv6.be>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 3 Dec 2019 11:45:48 +0100
Message-ID: <CAKR_QVJyV_0=fF0f-0ySxSDUuh6hEa6jGdhAYZUw5izpLBe-sQ@mail.gmail.com>
To: Stijn Tintel <stijn@linux-ipv6.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_024550_677372_5BB655CF 
X-CRM114-Status: UNSURE (   4.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

i just checked mac addresses in the first image i built for this
device (r10011) and they are correct:

eth 18:E8:29:_device_specific
wlan5g 18:E8:29:_device_specific
wlan2g 1A:E8:29:_device_specific

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
