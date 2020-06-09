Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3521F480F
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 22:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TW7D9pzKlZL0C0WmvJeo70c8jGM9baL1QFsPuyKeucs=; b=a5HzcAx1+1yeVsNQSglFmZ2NF
	Fv9mFgNJBpJGIrr9EFFj6JYpSeTTNTl5KF0YfwJ+z6hmZdwbJV9z4qPoQnRqJ3VP8n+MYK4Nb/ZVX
	sgzvBCuC6C50pKq+AEgzOaJey6F6wA4N2Cf8L617X5bZhp/I7v94MGH3SPCnE+bE1YgoCTZEgtLDH
	24q9oTwdJhrLSIPdwLljhANcNWbTn8xHDedKLhRPHPCGF5dRmCHwJ9BKYIkjI3uZrFxxPsWAtxCsX
	9cTO0Bm3xfGr4JhpMXdYQHuEV2VBuu36MjSOZmrVzEJfarZgif/gi0m5BQbWjGuk4ya7JthUYwKbX
	G6eNxyoaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikrP-00064g-B3; Tue, 09 Jun 2020 20:28:39 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikrH-00064O-6x
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 20:28:32 +0000
Received: by mail-ej1-x641.google.com with SMTP id k11so27156ejr.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 09 Jun 2020 13:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=mtvqDsT/zhycJihwVOHyAKN79hE1hkQEQxyY/SqfJEg=;
 b=gpalVlrJO1WJ8IFnbbITUlzYKMwSgKNGAEnqrrlROnbYxQ1QCbfyWcczQdIv2Qdo3L
 xod4txV6fbDg0quP7FAsB37dzzcAoeqnkjm+Ueo37MOOAfeOyOrvXoY3u2H+SEBXN3xp
 X0HRP8l24f72AwDskWXP94CIHbCB9EvOYAVHw9YsPuEB23jh8JVieHQ7bmiM/9h/hSbf
 zS5Xka+Duq60Os/iXPh+Qh3YV7U9WUI8muGVTyXEnfFWn8VrjvDjxADZyHfS1Go0S8bf
 WKZ4vsxlrl/YFGitFYpjShXh2TDK2VQL3oOYBL0PfpAohPhEKs2YuncUZ7kQ0XYcKp0y
 NOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mtvqDsT/zhycJihwVOHyAKN79hE1hkQEQxyY/SqfJEg=;
 b=FTqLnwEtgKsDrsMFdv82QXvV3AcBBeOqiVI0SzJ6eJl88QOAeR53yXwCyRk/i6aisk
 /OvITx+uLDlGQCUztHJshn7iT5hAzc/H2bSeTtGPZPOpP3jFbitbDIPN+AWkJwe7v44R
 VWSGTT/+Ea3EcRY2cNs2cmVOxQm7MTSw03G4xHd7Y3cjqmuHQrtzY7scsSREAB4Z+0GO
 wX4Pnu5eB9dcxS5LNA3/KsJjx248auk1w16stsFFX8KoKbrND1QgJCczimRwMV/0nNVQ
 XZ8fBQxGO2umd/KhMgdb2D+TnkBDVFSwIs5g/ES0e6S2tR6IRY+dMhQZKUD2iL+PDhAV
 vhpg==
X-Gm-Message-State: AOAM530URnNLPzV/gyQm2DkIkEsayj5VQG/2mNg0XlaFjGmTyKPQb6SJ
 E3PWGamxZY8YU6KDtip+2KVzpuSh
X-Google-Smtp-Source: ABdhPJxQDWZ5lZ6d8Qv3WIEr7hs4Q1NTfMUVes8VIa80X0GgWjs8bcpX5P13FWiyTF1MzaueMQEJeA==
X-Received: by 2002:a17:906:4756:: with SMTP id
 j22mr162182ejs.490.1591734509277; 
 Tue, 09 Jun 2020 13:28:29 -0700 (PDT)
Received: from debian64.daheim (p5b0d78f5.dip0.t-ipconnect.de. [91.13.120.245])
 by smtp.gmail.com with ESMTPSA id dj26sm15879963edb.4.2020.06.09.13.28.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 13:28:28 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1])
 by debian64.daheim with esmtp (Exim 4.94)
 (envelope-from <chunkeey@gmail.com>)
 id 1jikrC-002Ioq-Qz; Tue, 09 Jun 2020 22:28:26 +0200
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200607111346.2164-1-freifunk@adrianschmutzler.de>
From: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <536c5ace-2604-fd6b-0b30-b3f514af06e2@gmail.com>
Date: Tue, 9 Jun 2020 22:28:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200607111346.2164-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_132831_255333_EE9B5B36 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chunkeey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] apm821xx: move device definitions to
 subfiles
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

On 2020-06-07 13:13, Adrian Schmutzler wrote:
> With several subtargets, the image/Makefile becomes crowded after a
> while. Many targets have moved their device definitions to $subtarget.mk
> files to have them more organized, let's do this here as well.
> 
> While at it, also move subtarget-specific build recipes.
> 
> Cc: Christian Lamparter <chunkeey@gmail.com>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

I guess this is meant in the big picture of the series.
Sure, if this scratches the itch.

Acked-by: Christian Lamparter <chunkeey@gmail.com>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
