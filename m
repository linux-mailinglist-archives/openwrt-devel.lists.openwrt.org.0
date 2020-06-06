Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6978D1F0832
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 21:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2rmIRbdRYOD0INRv9Tdc3+O2PPbZ60i+NZaIXWc6kg=; b=jKMCZKENXAYckv
	xovaMQNXaUlngUnMdwOt1FuBZFTjaX0RF/kAq7enf87CJzBF3CNkKue5GPU0z+5c0EHykbKTqCuGj
	C2OXNvZhL3pd3PU8dmkzKMoegTPYEyXCq6e8pxtJJ8+WnpA6uCI54mJjldRmbr4HOaZ8nwg0EKH2d
	RSjru6X+o74TDEBddtO5mhCgHGWEcl0nNE8TKixDIDuaRITBNKuLGmrhPL8pRLIYySzo957IgcjAy
	n01ue9cDhaZWhlgdtPCipR6lT/HH9N6pv+5L7OhTatmt9Bmt3QXP5bigOPUEq3bbxG8AIMJZYOIIp
	qbYzPnLdSh9SrsCAhk+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhe6z-0002zb-0S; Sat, 06 Jun 2020 19:04:09 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhe6s-0002ys-7T
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 19:04:04 +0000
Received: by mail-qk1-x741.google.com with SMTP id 205so13327682qkg.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 12:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=miaCnOWwUoxQg/FVQxZuk4TstIWABMYj4cMDS6leAEw=;
 b=qMTkL0d1rIrsu20U9EdB7+ri4T6uT2UUUEPA5l/7g8SYA4bJFT9WlKpFxJ/8XI2jHF
 YK6PZnstEVqDSQkEaTQIWM+Qx8ghAu4ZErwN1lJ+UQxJd6uNwGRl0+tg1GsCX4C5Ikmi
 HsODYboVQ6ll15f848MSsDIneM/xJuQ2AwhvHcIZwsaAzCvU3x7s+QNZlrEQ7U03drfl
 xUPzWvoN78TRz2+EcmmJfaI8ZKnccBOQ7YmRF0eb0rBYnt+Zq1CnMD0v3ItQC0TA+GgA
 V1zEu0BV5AUUcEwWPaM5a48m5sb8EKUn4T7R5D1Yz55tAdvy4VnaGJyG1qhHmVPaKnYj
 LnBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=miaCnOWwUoxQg/FVQxZuk4TstIWABMYj4cMDS6leAEw=;
 b=g5+oB5uVZiR2NIzBvbu6iMhNQeMuEUByadpQhBE+J9NynbFRg+Q3IKKKcdu5OCbKbs
 CKY/aFpBCH48mN1SYxnA4rx7ea6Nysflb8uX/Ik0ZeKPN4ww+Ww8Ry4yX8a2Gu7eS3HT
 2UZLtp91cxcjE+uqkIhKioerBoXq6+ZVfcnWUSmyIxIhrt4K031zw6JpsSF3ar53PQny
 Zmzh6HaQt5ImTOjAtma1u8pM0SG0+Hme8bs12W502MCPypQGVBG7+U76jBcYiw0Mn3iP
 hzTUIY0bXZprSAZsx8gs1iFpoGZC8QXMCqd3/1w1CfAXHrO4YNaa4C92oKD4Wm+1plAY
 8U7A==
X-Gm-Message-State: AOAM533mBOTQH5jReoDy9dYcsBfLEHdBPqwYieNklXqv4HXc/mF4ispy
 meB30ix/OSuF2BnMVM1gv9JmkJjLBmx+8+8iglM=
X-Google-Smtp-Source: ABdhPJzf7peXLljWmr4hrU7GFxx0YfDvGLCuICSgrHQExTmazuRultsJTxnRkVclqOhIwtUSX3Yzx+XoyX709b4RDKY=
X-Received: by 2002:a37:6654:: with SMTP id a81mr14571062qkc.262.1591470240679; 
 Sat, 06 Jun 2020 12:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200311131310.32594-1-kristian.evensen@gmail.com>
In-Reply-To: <20200311131310.32594-1-kristian.evensen@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 6 Jun 2020 21:03:49 +0200
Message-ID: <CAJLcKsEUjB+KU7gzD2UjPzWAahATWSLNYgF2X7C4WGuC_wYsCQ@mail.gmail.com>
To: Kristian Evensen <kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_120402_287087_CB6AAEDC 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: Improve handling of device
 rename
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Mar 11, 2020 at 2:13 PM Kristian Evensen
<kristian.evensen@gmail.com> wrote:
>
> After an interface has been renamed on a "fast" device (for example
> x86_64), the interface is sometimes not handled correctly by netifd.
> Looking in the logs, I see the following messages when renaming fails:
>
> Wed Mar 11 08:52:44 2020 kern.info kernel: [68383.522038] igb 0000:03:00.0 nlw_1: renamed from eth2
> Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: __device_add_user(710): Add user for device 'nlw_1', refcount=2
> Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: device_claim(413): Claim Network device nlw_1, new active count: 2
> Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: device_claim(432): claim Network device nlw_1 failed: -1
>
> Instrumenting netifd further reveals that there is a race between the hotplug
> "@move" event and ioctl(SIOCGIFINDEX). When the above error happens, the
> ioctl-call fails with ENODEV. Looking closer at the kernel code, it seems the
> hotplug-event is triggered before the renaming is completed. The easiest way to
> trigger the race, is if an interface name with the old name is not handled by
> netifd and an interface with the new name is. If only the old name is handled,
> or both names, I was not able to provoke the race.
>
> When the renaming is complete, a NEWLINK-message is generated. This patch
> modifies the logic surrounding renaming, so that we wait for the
> NEWLINK-message before marking an interface as present. The changes made are:
>
> * We only handle move-events for interfaces we know, and we return after
> device has been set as not present.
> * When we receive a NEWLINK message for an interface managed by netifd,
> we call device_set_present. device_set_present is guarded by the same
> checks as the add hotplug-event.
>
> After these changes, renaming works properly on both "fast" and "slow"
> devices. Removing a device is also handled correctly.
>
> Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
> ---
>  system-linux.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/system-linux.c b/system-linux.c
> index d533be8..aff67d6 100644
> --- a/system-linux.c
> +++ b/system-linux.c
> @@ -590,6 +590,11 @@ static int cb_rtnl_event(struct nl_msg *msg, void *arg)
>         if (!system_get_dev_sysctl("/sys/class/net/%s/carrier", dev->ifname, buf, sizeof(buf)))
>                 link_state = strtoul(buf, NULL, 0);
>
> +       if (dev->type == &simple_device_type &&
> +           !system_if_force_external(dev->ifname) &&
> +           !dev->present)
> +               device_set_present(dev, true);
> +
>         device_set_link(dev, link_state ? true : false);
>
>  out:
> @@ -652,13 +657,15 @@ handle_hotplug_msg(char *data, int size)
>  move:
>         dev = device_find(interface_old);
>         if (!dev)
> -               goto found;
> +               return;
>
>         if (dev->type != &simple_device_type)
>                 goto found;
>
>         device_set_present(dev, false);
>
> +       return;
> +
>  found:
>         dev = device_find(interface);
>         if (!dev)
> --
> 2.20.1
Patch applied with minor modification
(https://git.openwrt.org/?p=project/netifd.git;a=commitdiff;h=51e9fb8151e8f2c16ac1400bf4d64147ee7e8f5a)

Thx
Hans
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
