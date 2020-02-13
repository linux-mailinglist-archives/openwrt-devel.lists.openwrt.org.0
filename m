Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC4015BBAB
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 10:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nADi0Udw0MKUoqmi3Odgid3QjGILOlnVsHtWiMlJ1vo=; b=jZCmgEjcz7nDC/
	BBl5/iHtyzUXuc7amWlfAeRSKgpCaqY1K2Q2v2tMCVqKmfiMx+HvztJkqu2ByXWbW9IT3H1uZg3rc
	Jmjtaq+9rpNLu6z2RqmTm+WQYH4DJHXbXLh5VJZBXGxXVGhzPFuUDlppNESeqbq7SZ7z6xKnAp6qY
	mlYhicpNhs6pVRG1Nn1rZcNCJSye3ypZ0d4QrcxrhCCGrbP9Ghv2PlKp3DrR3zMBn+7SVGC+fQe83
	NjgMwJuafoBsVXN5WAK2GUKJEB6iQ6yDUQdT8Zj5W8BcL6ldfREKg5YjXpLoHIOCeGCktBIqfnIZy
	UP8W6Lw28Hbb56ZxuYTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Amv-0001E0-U4; Thu, 13 Feb 2020 09:28:01 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Aml-0001Bp-DD
 for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 09:27:53 +0000
Received: by mail-ot1-x341.google.com with SMTP id d3so4937234otp.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Feb 2020 01:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AIerZ8xG8y6wpsuhQvDjbzr5lFRF+dyQAfH0SDzgcxQ=;
 b=hIwfLPJ8G0DlQez015gP0zi+CUUe0G8rxp11hle6sIsuSaAaGk4d5VVB4kLxhl0Y90
 hN3QRn9IaIN9OK+qESb+XqOdKdQYEh/b7MXhUFqWQyCL+zu4hxn5eA2NngmnPdNqEjct
 Y+bn3VbxtUazG8lS+aK3qmVZlg8O6Md9K25J5WRr2vwbBfH0Hc9pUPTbtEoJppNMQ9iS
 ykLfxKxqKS49lxj/0q9+FRPI+XQNy0REscv6RRAQ4fPHUGoOWsepyqCvyCmOO/72tYNg
 CyMRmH9BMLRPKIOhmmEtTrmCDQQ9itD3efkPBUpOTOCW/8DXUBCJsPJAcf3uPrL9xL7k
 zmQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AIerZ8xG8y6wpsuhQvDjbzr5lFRF+dyQAfH0SDzgcxQ=;
 b=BE04JGHR9vam17f/GT8dXHxvt51d7RE5RrLhm3dTZ5mQZD648veFwE3unbd0d6s9l9
 l0G83Tj6A9wk6eB3xUEnikdaeQa7mlM+U1zU+7gwwdF53mTn2/H7qIJAQ0Y9IanK7fSP
 mTmICTSgSoZpw96qlvfPDn8yO1OW1qyFJ8Ruq9tab9UiSIdeaBebxqERig3avBlTHWKP
 nEdizVYPSxhQ54IbZq2NJn2kVp5e0NqDYBh9DbU9Q+faRULs6zFC1KjrO/D5KRlhvMKk
 lzzZT73QGvYChx4p0Oa3F/DYtixW7OhUbCiu4iJlYg17F5obPQ825MDd6dNtokdkzYMl
 Tndg==
X-Gm-Message-State: APjAAAV/bUui80pVKZlBXM+4M3Mjf0n2Vv69yuXfjBOdldwmJrXvDTRu
 jYFmBBHBvtVW7COkRZZUy5WKM+qYjEnXicw7KTU=
X-Google-Smtp-Source: APXvYqyosL0hgX4mup1xKHfH4v8tdmO2ja84P4eW4AuAwEPDbwCXaX/bQYRJEo7HVrf3s7NEIROGNtmsjhi8S6xxCXc=
X-Received: by 2002:a05:6830:22cd:: with SMTP id
 q13mr12840428otc.224.1581586070217; 
 Thu, 13 Feb 2020 01:27:50 -0800 (PST)
MIME-Version: 1.0
References: <20200212104902.7779-1-hauke.mehrtens@intel.com>
 <20200212104902.7779-4-hauke.mehrtens@intel.com>
In-Reply-To: <20200212104902.7779-4-hauke.mehrtens@intel.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Thu, 13 Feb 2020 11:30:22 +0200
Message-ID: <CA+U=DsrDQ+eQcs+vWgJ8avhOv6p-o2xEoXGRUTU5NEEy4L04qw@mail.gmail.com>
To: Hauke Mehrtens <hauke.mehrtens@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_012751_468524_E6A0CD66 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ardeleanalex[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] build: Add additional kernel debug
 options
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
Cc: "openwrt-devel@lists.openwrt.org jogo@openwrt.org" <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Feb 12, 2020 at 12:50 PM Hauke Mehrtens
<hauke.mehrtens@intel.com> wrote:
>
> Make it possible to activate some additional kernel debug options.
> This can be used to debug some problems in kernel drivers.
>

Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>

> Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
> ---
>  config/Config-kernel.in          | 68 ++++++++++++++++++++++++++++++++
>  target/linux/generic/config-4.14 |  5 +++
>  target/linux/generic/config-4.19 |  5 +++
>  3 files changed, 78 insertions(+)
>
> diff --git a/config/Config-kernel.in b/config/Config-kernel.in
> index 8e9e3518bf..4330d9fa5c 100644
> --- a/config/Config-kernel.in
> +++ b/config/Config-kernel.in
> @@ -377,6 +377,74 @@ config KERNEL_PROVE_LOCKING
>         select KERNEL_DEBUG_KERNEL
>         default n
>
> +config KERNEL_LOCKUP_DETECTOR
> +       bool "Compile the kernel with detect Hard and Soft Lockups"
> +       depends on KERNEL_DEBUG_KERNEL
> +       help
> +         Say Y here to enable the kernel to act as a watchdog to detect
> +         hard and soft lockups.
> +
> +         Softlockups are bugs that cause the kernel to loop in kernel
> +         mode for more than 20 seconds, without giving other tasks a
> +         chance to run.  The current stack trace is displayed upon
> +         detection and the system will stay locked up.
> +
> +         Hardlockups are bugs that cause the CPU to loop in kernel mode
> +         for more than 10 seconds, without letting other interrupts have a
> +         chance to run.  The current stack trace is displayed upon detection
> +         and the system will stay locked up.
> +
> +         The overhead should be minimal.  A periodic hrtimer runs to
> +         generate interrupts and kick the watchdog task every 4 seconds.
> +         An NMI is generated every 10 seconds or so to check for hardlockups.
> +
> +         The frequency of hrtimer and NMI events and the soft and hard lockup
> +         thresholds can be controlled through the sysctl watchdog_thresh.
> +
> +config KERNEL_DETECT_HUNG_TASK
> +       bool "Compile the kernel with detect Hung Tasks"
> +       depends on KERNEL_DEBUG_KERNEL
> +       default KERNEL_LOCKUP_DETECTOR
> +       help
> +         Say Y here to enable the kernel to detect "hung tasks",
> +         which are bugs that cause the task to be stuck in
> +         uninterruptible "D" state indefinitely.
> +
> +         When a hung task is detected, the kernel will print the
> +         current stack trace (which you should report), but the
> +         task will stay in uninterruptible state. If lockdep is
> +         enabled then all held locks will also be reported. This
> +         feature has negligible overhead.
> +
> +config KERNEL_WQ_WATCHDOG
> +       bool "Compile the kernel with detect Workqueue Stalls"
> +       depends on KERNEL_DEBUG_KERNEL
> +       help
> +         Say Y here to enable stall detection on workqueues.  If a
> +         worker pool doesn't make forward progress on a pending work
> +         item for over a given amount of time, 30s by default, a
> +         warning message is printed along with dump of workqueue
> +         state.  This can be configured through kernel parameter
> +         "workqueue.watchdog_thresh" and its sysfs counterpart.
> +
> +config KERNEL_DEBUG_ATOMIC_SLEEP
> +       bool "Compile the kernel with sleep inside atomic section checking"
> +       depends on KERNEL_DEBUG_KERNEL
> +       help
> +         If you say Y here, various routines which may sleep will become very
> +         noisy if they are called inside atomic sections: when a spinlock is
> +         held, inside an rcu read side critical section, inside preempt disabled
> +         sections, inside an interrupt, etc...
> +
> +config KERNEL_DEBUG_VM
> +       bool "Compile the kernel with debug VM"
> +       depends on KERNEL_DEBUG_KERNEL
> +       help
> +         Enable this to turn on extended checks in the virtual-memory system
> +          that may impact performance.
> +
> +         If unsure, say N.
> +
>  config KERNEL_PRINTK_TIME
>         bool "Enable printk timestamps"
>         default y
> diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
> index 5a9b82db80..d1ce30d2f7 100644
> --- a/target/linux/generic/config-4.14
> +++ b/target/linux/generic/config-4.14
> @@ -594,6 +594,7 @@ CONFIG_BLOCK=y
>  # CONFIG_BONDING is not set
>  # CONFIG_BOOKE_WDT is not set
>  CONFIG_BOOKE_WDT_DEFAULT_TIMEOUT=3
> +# CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
>  # CONFIG_BOOT_PRINTK_DELAY is not set
>  CONFIG_BOOT_RAW=y
>  CONFIG_BPF=y
> @@ -1073,6 +1074,9 @@ CONFIG_DEBUG_KERNEL=y
>  # CONFIG_DEBUG_UART_BCM63XX is not set
>  # CONFIG_DEBUG_VIRTUAL is not set
>  # CONFIG_DEBUG_VM is not set
> +# CONFIG_DEBUG_VM_PGFLAGS is not set
> +# CONFIG_DEBUG_VM_RB is not set
> +# CONFIG_DEBUG_VM_VMACACHE is not set
>  # CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
>  # CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
>  # CONFIG_DEBUG_WX is not set
> @@ -1081,6 +1085,7 @@ CONFIG_DEBUG_KERNEL=y
>  CONFIG_DEFAULT_CUBIC=y
>  CONFIG_DEFAULT_DEADLINE=y
>  CONFIG_DEFAULT_HOSTNAME="(none)"
> +CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=120
>  CONFIG_DEFAULT_IOSCHED="deadline"
>  CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
>  # CONFIG_DEFAULT_NOOP is not set
> diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
> index 372cad70a6..153520c396 100644
> --- a/target/linux/generic/config-4.19
> +++ b/target/linux/generic/config-4.19
> @@ -617,6 +617,7 @@ CONFIG_BLOCK=y
>  # CONFIG_BONDING is not set
>  # CONFIG_BOOKE_WDT is not set
>  CONFIG_BOOKE_WDT_DEFAULT_TIMEOUT=3
> +# CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
>  # CONFIG_BOOT_PRINTK_DELAY is not set
>  CONFIG_BOOT_RAW=y
>  CONFIG_BPF=y
> @@ -1131,6 +1132,9 @@ CONFIG_DEBUG_KERNEL=y
>  # CONFIG_DEBUG_UART_BCM63XX is not set
>  # CONFIG_DEBUG_VIRTUAL is not set
>  # CONFIG_DEBUG_VM is not set
> +# CONFIG_DEBUG_VM_PGFLAGS is not set
> +# CONFIG_DEBUG_VM_RB is not set
> +# CONFIG_DEBUG_VM_VMACACHE is not set
>  # CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
>  # CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
>  # CONFIG_DEBUG_WX is not set
> @@ -1139,6 +1143,7 @@ CONFIG_DEBUG_KERNEL=y
>  CONFIG_DEFAULT_CUBIC=y
>  CONFIG_DEFAULT_DEADLINE=y
>  CONFIG_DEFAULT_HOSTNAME="(none)"
> +CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=120
>  CONFIG_DEFAULT_IOSCHED="deadline"
>  CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
>  # CONFIG_DEFAULT_NOOP is not set
> --
> 2.17.1
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
