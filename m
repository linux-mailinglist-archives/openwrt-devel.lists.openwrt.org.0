Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0781E12865D
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Dec 2019 02:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/UJVgNJSAFZQXoyJpMarzN80mIlD7QZyHBrTt5od54=; b=ALXhtfeyFNckES
	n3xHbg7mcTUVgy0oDqBIeRRc9BrUCNTqvY5YABc0rKhtalqOcqjur8SRszYnttLtRGcF2I6G57/5P
	M7PLX8SFI43+pzu3jjyB8cGjEdaOtWQvYEn1/bPiO5CSNdUM9ueKFgsbbgZLDTwn08ys5jL2xwUSA
	2tJe4RnGPYAVkGslrJWV11IjBbKzufnQsg/4CZmqQr5Bw6yovC54NtJ7E+WIGdmq4zhuEDwC5pRuw
	UW0VOKaRWf6+p++EPCbVxpdPKfFb0l8MB5W40QFBhPCfc392d19114JUzLsfsthvFO1PPWPjscpIY
	Stity6l7lakpSsK9l4jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiTdB-0001bq-Q8; Sat, 21 Dec 2019 01:32:33 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiTd4-0001bR-6J
 for openwrt-devel@lists.openwrt.org; Sat, 21 Dec 2019 01:32:27 +0000
Received: by mail-io1-xd41.google.com with SMTP id b10so11217330iof.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Dec 2019 17:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=68KlxGgnzI6Na/hmjV0aGjCZI1sk+9MreFT4ZvBq8lU=;
 b=Lv4Ow6v7rdT6bvwXxU9OHMzTiAmzfMxjzMl5WQRP0QMHO9dgJQWL8+p9nucE8mF2K+
 BCstNDSIqd1STlwShRQ9SBbdwYFhjehjj2hyJ9QWLy6C5++7FnLJqjRdwgYkbAuahSZ5
 OzKDdA7GDxcisNUQuMO7J4leJlAfvmSEx6saCwQndVpWBPveq21wfAcwZA3xfhypa6+g
 15CFkl+9XF46fGNUswXu/9ByReTbJKxcjPQlhvL87Z4j2aK9AovXkYhQtvcaP+W58jCz
 jHMDHKnWeetSam1+L5qvyTf19W1GwzzH6QnYEYnD8LoQu4rO57GOGCAtHFsYhzcWTSA9
 DWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=68KlxGgnzI6Na/hmjV0aGjCZI1sk+9MreFT4ZvBq8lU=;
 b=AV4F8W2cl3ApRQ5QDGiWs4M4wigrZcybAtUpSXTecLLKxBne+zCW3wGSFJyXhunx9v
 aSpEN7LBoTxM9Q7FHlGCKnbAWwlolkL0MTHIrqFLDPQPgFsSbegVWeNnk6Z3RroRGp6S
 OP49qqM9HnVVirSw0U0d7ZZRF1WuqiE5nFcyQOZl6vQXLRdAfrfWrobPdlIiWpfAWxW5
 ZNwc3UmoOA2r6fSj1//SeeywJmek0RDT2G7FUPEhl3wq8mJlu85G2QjbEIKsmR/aOSSy
 CaUflBCzka3CR55fkOh4xHgMfvnBHlVY1KQWUYDDR6odpFWGLeAcazTu5yizIk6jo9t/
 nimA==
X-Gm-Message-State: APjAAAVhGyphJyUigCcIeDfSw14R+JqgGv+eNTIOtU1vgSgD7tV9b3F3
 Kp8rkl9HCjtjkfiZihPh00KBo000NZ7qFFYPEFluBO+q
X-Google-Smtp-Source: APXvYqx8icfhYgXRop1Prs8aj12MstkSy3AmCAYsVa15ok843dJSkv3XoVenArnCT/eqeRWk2PginCxnnlj7UpVA8hc=
X-Received: by 2002:a05:6638:3b6:: with SMTP id
 z22mr14293161jap.35.1576891943549; 
 Fri, 20 Dec 2019 17:32:23 -0800 (PST)
MIME-Version: 1.0
References: <20191022090743.1487-1-G.M0N3Y.2503@gmail.com>
In-Reply-To: <20191022090743.1487-1-G.M0N3Y.2503@gmail.com>
From: Gerard Ryan <g.m0n3y.2503@gmail.com>
Date: Sat, 21 Dec 2019 11:32:13 +1000
Message-ID: <CAKycSdBphp4zdRNM2xkMhSWawQDa5=703q_FN3+4_XvPJJXGLA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_173226_237947_B7DCF174 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (g.m0n3y.2503[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (g.m0n3y.2503[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [OpenWrt-Devel, V3,
 2/2] kmodloader: added -a arg to modprobe
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
Cc: Gerard Ryan <G.M0N3Y.2503@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Does anyone have any tips on how to expedite the review of this patch?
Am I missing something or is the patch malformed?

Thanks in advance,
Gerard

On Tue, Oct 22, 2019 at 7:08 PM Gerard Ryan <g.m0n3y.2503@gmail.com> wrote:
>
> -a treats all non-op trailing arguments as module names
> and attempts to load all of them. This behaviour mirrors the behaviour
> of the respective -a in /tools/modprobe.c from https://git.kernel.org.
>
> This is primarily to satiate the multiple modules passed by
> docker/libnetwork.
>
> Signed-off-by: Gerard Ryan <G.M0N3Y.2503@gmail.com>
> ---
> Compile tested: x86_x64, Hyper-V, OpenWrt Master
> Run tested: x86_x64, Hyper-V, OpenWrt Master
>
> You can also find this patch on GitHub if you prefer.
> https://github.com/G-M0N3Y-2503/openwrt-ubox-mirror/tree/feature_extend_modprobe_options
>
> Since https://patchwork.ozlabs.org/patch/1175792/ I adjusted some whitespace to indent more consistently and split the patch by the args they implement.
> Since https://patchwork.ozlabs.org/patch/1179955/ I reworded the commit message to explain the functionality of -a
>
>  kmodloader.c | 68 +++++++++++++++++++++++++++++-----------------------
>  1 file changed, 38 insertions(+), 30 deletions(-)
>
> diff --git a/kmodloader.c b/kmodloader.c
> index 07b6700..838bc8c 100644
> --- a/kmodloader.c
> +++ b/kmodloader.c
> @@ -681,6 +681,7 @@ static int print_modprobe_usage(void)
>         ULOG_INFO(
>                 "Usage:\n"
>                 "\tmodprobe [-q] [-v] filename\n"
> +               "\tmodprobe -a [-q] [-v] filename [filename...]\n"
>         );
>
>         return -1;
> @@ -854,16 +855,20 @@ static int main_modinfo(int argc, char **argv)
>
>  static int main_modprobe(int argc, char **argv)
>  {
> +       int exit_code = EXIT_SUCCESS;
>         struct module_node *mn;
>         struct module *m;
> -       char *name;
> -       char *mod = NULL;
> +       int load_fail;
>         int log_level = LOG_WARNING;
>         int opt;
>         bool quiet = false;
> +       bool use_all = false;
>
> -       while ((opt = getopt(argc, argv, "qv")) != -1 ) {
> +       while ((opt = getopt(argc, argv, "aqv")) != -1 ) {
>                 switch (opt) {
> +                       case 'a':
> +                               use_all = true;
> +                               break;
>                         case 'q': /* shhhh! */
>                                 quiet = true;
>                                 break;
> @@ -882,48 +887,51 @@ static int main_modprobe(int argc, char **argv)
>         /* after print_modprobe_usage() so it won't be filtered out */
>         ulog_threshold(log_level);
>
> -       mod = argv[optind];
> -
>         if (scan_module_folders())
>                 return -1;
>
>         if (scan_loaded_modules())
>                 return -1;
>
> -       name = get_module_name(mod);
> -       m = find_module(name);
> -       if (m && m->state == LOADED) {
> -               if (!quiet)
> -                       ULOG_ERR("%s is already loaded\n", name);
> -               return 0;
> -       } else if (!m) {
> -               if (!quiet)
> -                       ULOG_ERR("failed to find a module named %s\n", name);
> -               return -1;
> -       } else {
> -               int fail;
> +       do {
> +               char *name;
>
> -               m->state = PROBE;
> +               name = get_module_name(argv[optind]);
> +               m = find_module(name);
>
> -               fail = load_modprobe(true);
> +               if (m && m->state == LOADED) {
> +                       if (!quiet)
> +                               ULOG_INFO("%s is already loaded\n", name);
> +               } else if (!m) {
> +                       if (!quiet)
> +                               ULOG_ERR("failed to find a module named %s\n", name);
> +                       exit_code = EXIT_FAILURE;
> +               } else {
> +                       m->state = PROBE;
> +               }
>
> -               if (fail) {
> -                       ULOG_ERR("%d module%s could not be probed\n",
> -                                fail, (fail == 1) ? ("") : ("s"));
> +               optind++;
> +       } while (use_all && optind < argc);
>
> -                       avl_for_each_element(&modules, mn, avl) {
> -                               if (mn->is_alias)
> -                                       continue;
> -                               m = mn->m;
> -                               if ((m->state == PROBE) || m->error)
> -                                       ULOG_ERR("- %s\n", m->name);
> -                       }
> +       load_fail = load_modprobe(true);
> +       if (load_fail) {
> +               ULOG_ERR("%d module%s could not be probed\n",
> +                        load_fail, (load_fail == 1) ? ("") : ("s"));
> +
> +               avl_for_each_element(&modules, mn, avl) {
> +                       if (mn->is_alias)
> +                               continue;
> +                       m = mn->m;
> +                       if ((m->state == PROBE) || m->error)
> +                               ULOG_ERR("- %s\n", m->name);
>                 }
> +
> +               exit_code = EXIT_FAILURE;
>         }
>
>         free_modules();
>
> -       return 0;
> +       return exit_code;
>  }
>
>  static int main_loader(int argc, char **argv)
> --
> 2.17.1
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
