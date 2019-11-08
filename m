Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD31F53B3
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 19:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTod1Scwi8HIGt2q5IZ11o7CSeZBsfNjuKUhWNC8tD0=; b=gNvam1YxXjgVZH
	T00u0ZN6lggM/aTnSuYALaX8jiDJiH3NgDK+Aug8pwjhFJZLPLdUTFZ4S0hRqBZDKctHuvErPKo4k
	KQvc7lmsj01YgPUdD+gFV5GqNxVzxKTIv+TPRiMUO40kG3YuAbAtYfCPY0GsB0hTDm7kdMpcB/r08
	ch2CAZpOS5CSR/y4BieuuJPZee6xwmj8Pt5X3z09KcN+qKnESjbGWP2LncOZquxTzAM4mzu86CpVK
	psBwiC+bzygSKKkeyPYSEj7jkQUKakP9jozEyuWg9cijKjxNfojazJOnBq0KrMwOyDsXJBD4EV9UZ
	HadikrX/mc9tkZQOFwTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT9HI-0002kC-Mc; Fri, 08 Nov 2019 18:46:36 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT9HB-0002jk-FM
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 18:46:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id t26so7253067wmi.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 10:46:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9pwwWQhb2I1kFmWaB9CH2+2dReHxIWVYfHg5gi2/7jc=;
 b=FK03JqZ0Y+qhdSbTkCi+fsx9zu3wSPJizindUDzItgTC5Ey8aQQJ0eFLAJ1evwk96T
 y+ksB9hKbd7KO3MU9XXpCv0px/ZH9mvrT+QyqTD/cRRWgvdGpvCNJEiAWXoRsTBicwn3
 UgTk3NzpSe5z8dGEqHwFlUUZVkaj2wxLjbmr9kMHDQN/SDRyQRZOY7ThpW7AuONSpSuA
 Kc1AvNPmG0++4H+vWAi1oixYqH+s3pL69ml4m9e9pOp/QZKXziOxHzlFYbUsYrS9f0Pw
 x+OnU3JcgXnG/zH9KcaUUbWgZ84HEgCJO6IGQK+c+tgOt3+hLxe/DSivJc5S+ezj/JNU
 4VGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9pwwWQhb2I1kFmWaB9CH2+2dReHxIWVYfHg5gi2/7jc=;
 b=aLKkQ++M+tIgsbfC5PBPXDOnRBswd2oIAQQiZrc8dhkLgX8WRWtDSjegIytiYe4dln
 ZNsFNe8vT5hDbhKS9Z5WsZhW1ddH0FVc/RHaZnG9xHnuxLL5Lh572PXAm1ylareYFEU0
 wc54wR/XvzPjmhw6rNkHWCQ/gmNd3xdM7HAC+g2OqinysABeh8t2n5jW8Xi4ilJZu3VK
 SYPZWpnyDI9sIKs86T+60JT/SQGO6DJOFKdZQ8KU6bgwdoU92+EbIjbatx4TRRXzUZFc
 Khzrgn1J9Q/7n6HAEAbOjtRE0544p5AVPVtG1bmzpE91NkYU3QZjKN2xQzWQdDNaxqRU
 p+cA==
X-Gm-Message-State: APjAAAWEShy0QnRz2pYu1a49QaCoHOzqGBsxcyxcIeR5GzKBCpz78szk
 3lbRwMpo75NO8+1FtJfwl4Y=
X-Google-Smtp-Source: APXvYqyqBemib8lfCaKP0PRz/7+A0Gg+nS4AXtzE8nOPivy5U6dOfyttkxcT+8SXo2w9XxCPKqoAnw==
X-Received: by 2002:a1c:1b06:: with SMTP id b6mr9349584wmb.3.1573238787043;
 Fri, 08 Nov 2019 10:46:27 -0800 (PST)
Received: from debian64.daheim (p5B0D779F.dip0.t-ipconnect.de. [91.13.119.159])
 by smtp.gmail.com with ESMTPSA id u187sm8614104wme.15.2019.11.08.10.46.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 10:46:26 -0800 (PST)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93-RC1)
 (envelope-from <chunkeey@gmail.com>)
 id 1iT9Gj-0004VJ-W3; Fri, 08 Nov 2019 19:46:01 +0100
From: Christian Lamparter <chunkeey@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Date: Fri, 08 Nov 2019 19:46:01 +0100
Message-ID: <1823615.pomYDSgldP@debian64>
In-Reply-To: <00ec01d5940d$2df34120$89d9c360$@adrianschmutzler.de>
References: <00ec01d5940d$2df34120$89d9c360$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_104629_515035_40625C8A 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ipq40xx: Bogus IMAGE_SIZE on asus rt-ac58u
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

Hello,

On Tuesday, November 5, 2019 8:13:59 PM CET Adrian Schmutzler wrote:
> as stated already in the comment of an earlier patch, the asus_rt-ac58u
> on ipq40xx target has an IMAGE_SIZE of 20439364, which cannot be divided
> by 1024 and also does not seem to match anything in DTS.

This was soo long ago, but luckily I kept some notes and files in the cold
storage... and since it's finally snowing outside, they became accessible.

As for the relying on the DTS: Please don't in this case. The RT-AC58U uses
UBI. So multiple volumes are stored in that UBI_DEV (or "ubi" now) partition.
The original u-boot from ASUS kept a failsafe volume around so does works   

> 
> I couldn't identify what should be the correct value in this case,
> so maybe someone more familiar with the target could have a look and fix this odd value.

It was the size of the original firmware back in 2016.

You should be able to confirm this, just download the firmware called:
"FW_RT_AC58U_30043806516.zip" and extract it.
In the archive, there should be this file (ls -al ouput):
"-rw-r--r-- 1 user user 20439364 Oct  4  2016 FW_RT-AC58U_3.0.0.4_380_6516-g6772678.trx"

This is where the IMAGE_SIZE was coming from. From what I can tell,
the firmware web upgrade had issues with the full ~48MiB image size,
so I opted to 1:1 copy the size of that firmware file to be on the
safe side. (The tftp method didn't have that limitation though).

And finally: The RT-AC58U is in a bit of a dicy pickle (together with other
some ath79 devices).  Reason being that due to the poor memory management of
wifi drivers, the 128 MiB of RAM it has is not enough. When the wifis are
activated and pushed the device runs into OOMs and regulary crashes/panics.
So in a way, it's on the chopping block.
 
Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
