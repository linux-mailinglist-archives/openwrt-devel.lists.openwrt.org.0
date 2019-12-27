Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B7412B5A2
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 16:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XewxmQ4kehAVD5RYBUr9EOo0Y7UoByI539IScx6RAvE=; b=pZX/iPu3/qesdx
	bKSTaDjVcivdP0x4t9yqClRA+fmxW52+YoXPCAxPclqfeWBWSPJN7vnBwqOhz+9Wu5tKP0n7FWAHV
	Cv8zyF+bIe9TdJ8P4zz3jmAIgNAFczM5J729IcvYsxsVoiJeMq7kt+jOTOMTLSjG3Wwm5hAK6zBkp
	5y1g1UUog4xejGVax8PoS/921VKZD+CbuykcYdKbgRR3IPGbAuMh9JGUUNQBOJRc555Lt9flAGppn
	OYrmEUN/CsOeY0wxcSwSNMPD2ottribhr5UqwOrmHX0DvDISpb1gvjRpwX/lfs7HCWpF4g4EjQsVo
	NBy/YZba8aGFJ1Zu6F1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikraD-0005U8-Aj; Fri, 27 Dec 2019 15:31:21 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikra2-0005Te-1t
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 15:31:12 +0000
Received: by mail-qk1-x743.google.com with SMTP id w127so21721782qkb.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Dec 2019 07:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ENh/qk0Aoe598Ufym230kVYZ+bzs+SOGfKTee+N//N8=;
 b=Lm45dm1yhwzIaYKnuVPNB7XQxq7ARiLfOqiFv/qlDZX1onmQznZbS2Drs8bs72eSlC
 ISMAdAfMeNY87hQelspjKJ//zk0L+m3nYGhoCLAR41ddRP5qdW8NdXMm/8ClnlufZm9t
 x/skqIzEWE9WC4yAQK71UmSwZiU6kl9PJZsNDNP+Dxftlv9HGStgNqNAyR/a6+EQLReT
 Q0wk+lYFTeIWApY6w0V/pfTHRtzF68eqd+7jnDHSL4nkT2THW1mQLS7wce3vKc9afVTV
 ZULQ/CgVdHbD87IXd8ZUllM8tnvkg/9eU3Q0nHczcg48KB39IlwMY8Rx7z+0vAVp33ri
 Zn/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ENh/qk0Aoe598Ufym230kVYZ+bzs+SOGfKTee+N//N8=;
 b=QKabq8mKKzKnikkWOqTJC8Ly2CDMKebOUKFukOHf9ZwCoHli9d0e48wpDZ0tOjgohG
 piMxPSpx4mw2yHLZ/OfmxM/S5qksUrB5RBebMr5n4jQvWdiYAVh0pN+yTvDSYLtgj42S
 tCzL3K6cJ/IdKRAEy6VrAJQndewLpxLHbKb4/TT5kNQ1GHRjLJeiA+Xeg9DStC9BOjo7
 N1ESVHxtw6QbhmqL2vfzrbbDzhD2tl5FsN75UuZFoj2Rvh/j8GOkdXIIAcbGmlZvoIw1
 hMdc43XGheCcOvGg0roITH6WS8NWDD/tA8HkRiuPghcqTyPjcvVZo+NtKlzKMGSQ9ptd
 rbRQ==
X-Gm-Message-State: APjAAAWJSH4qR/NnZebnxwOOvAfQdbYLBLoDJHAoTO46ZVO2J6/kX4aw
 7gI25n034/IW3gUwUOesvVMS7EK02rsgGha5v6s=
X-Google-Smtp-Source: APXvYqyrjWDw8ub9n+Is8ZXqmLD6ZrdVKH7Mg8ri3W8A8DqG5iQ+zwesJvgVjnnpQy4gtWd6bnMhhbguX1DmN0AO2Pg=
X-Received: by 2002:a37:4f8d:: with SMTP id
 d135mr44658758qkb.455.1577460668177; 
 Fri, 27 Dec 2019 07:31:08 -0800 (PST)
MIME-Version: 1.0
References: <20191022090743.1487-1-G.M0N3Y.2503@gmail.com>
 <CAKycSdBphp4zdRNM2xkMhSWawQDa5=703q_FN3+4_XvPJJXGLA@mail.gmail.com>
In-Reply-To: <CAKycSdBphp4zdRNM2xkMhSWawQDa5=703q_FN3+4_XvPJJXGLA@mail.gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Fri, 27 Dec 2019 16:30:57 +0100
Message-ID: <CAJLcKsFUuH73vqSF-E-KQ8E=FW6fQ3e0xp60oXnKE1wiha3jqw@mail.gmail.com>
To: Gerard Ryan <g.m0n3y.2503@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_073110_097318_F8F3DFCB 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Dec 21, 2019 at 2:32 AM Gerard Ryan <g.m0n3y.2503@gmail.com> wrote:
>
> Does anyone have any tips on how to expedite the review of this patch?
> Am I missing something or is the patch malformed?
Patch looks fine; some style comments inline

Hans
>
> Thanks in advance,
> Gerard
>
> On Tue, Oct 22, 2019 at 7:08 PM Gerard Ryan <g.m0n3y.2503@gmail.com> wrote:
> >
> > -a treats all non-op trailing arguments as module names
> > and attempts to load all of them. This behaviour mirrors the behaviour
> > of the respective -a in /tools/modprobe.c from https://git.kernel.org.
> >
> > This is primarily to satiate the multiple modules passed by
> > docker/libnetwork.
> >
> > Signed-off-by: Gerard Ryan <G.M0N3Y.2503@gmail.com>
> > ---
> > Compile tested: x86_x64, Hyper-V, OpenWrt Master
> > Run tested: x86_x64, Hyper-V, OpenWrt Master
> >
> > You can also find this patch on GitHub if you prefer.
> > https://github.com/G-M0N3Y-2503/openwrt-ubox-mirror/tree/feature_extend_modprobe_options
> >
> > Since https://patchwork.ozlabs.org/patch/1175792/ I adjusted some whitespace to indent more consistently and split the patch by the args they implement.
> > Since https://patchwork.ozlabs.org/patch/1179955/ I reworded the commit message to explain the functionality of -a
> >
> >  kmodloader.c | 68 +++++++++++++++++++++++++++++-----------------------
> >  1 file changed, 38 insertions(+), 30 deletions(-)
> >
> > diff --git a/kmodloader.c b/kmodloader.c
> > index 07b6700..838bc8c 100644
> > --- a/kmodloader.c
> > +++ b/kmodloader.c
> > @@ -681,6 +681,7 @@ static int print_modprobe_usage(void)
> >         ULOG_INFO(
> >                 "Usage:\n"
> >                 "\tmodprobe [-q] [-v] filename\n"
> > +               "\tmodprobe -a [-q] [-v] filename [filename...]\n"
> >         );
> >
> >         return -1;
> > @@ -854,16 +855,20 @@ static int main_modinfo(int argc, char **argv)
> >
> >  static int main_modprobe(int argc, char **argv)
> >  {
> > +       int exit_code = EXIT_SUCCESS;
Group this line with the other int parameter declarations below; for
alignment with other functions like lsmod and rmmod I prefer to set
exit_code to 0.
Another alternative is to change this for all functions but then in a
separate patch.
> >         struct module_node *mn;
> >         struct module *m;
> > -       char *name;
> > -       char *mod = NULL;
> > +       int load_fail;
> >         int log_level = LOG_WARNING;
> >         int opt;
> >         bool quiet = false;
> > +       bool use_all = false;
> >
> > -       while ((opt = getopt(argc, argv, "qv")) != -1 ) {
> > +       while ((opt = getopt(argc, argv, "aqv")) != -1 ) {
> >                 switch (opt) {
> > +                       case 'a':
> > +                               use_all = true;
> > +                               break;
> >                         case 'q': /* shhhh! */
> >                                 quiet = true;
> >                                 break;
> > @@ -882,48 +887,51 @@ static int main_modprobe(int argc, char **argv)
> >         /* after print_modprobe_usage() so it won't be filtered out */
> >         ulog_threshold(log_level);
> >
> > -       mod = argv[optind];
> > -
> >         if (scan_module_folders())
> >                 return -1;
> >
> >         if (scan_loaded_modules())
> >                 return -1;
> >
> > -       name = get_module_name(mod);
> > -       m = find_module(name);
> > -       if (m && m->state == LOADED) {
> > -               if (!quiet)
> > -                       ULOG_ERR("%s is already loaded\n", name);
> > -               return 0;
> > -       } else if (!m) {
> > -               if (!quiet)
> > -                       ULOG_ERR("failed to find a module named %s\n", name);
> > -               return -1;
> > -       } else {
> > -               int fail;
> > +       do {
> > +               char *name;
> >
> > -               m->state = PROBE;
> > +               name = get_module_name(argv[optind]);
> > +               m = find_module(name);
> >
> > -               fail = load_modprobe(true);
> > +               if (m && m->state == LOADED) {
> > +                       if (!quiet)
> > +                               ULOG_INFO("%s is already loaded\n", name);
> > +               } else if (!m) {
> > +                       if (!quiet)
> > +                               ULOG_ERR("failed to find a module named %s\n", name);
> > +                       exit_code = EXIT_FAILURE;
Same as above use -1 for alignment with other functions
> > +               } else {
> > +                       m->state = PROBE;
> > +               }
> >
> > -               if (fail) {
> > -                       ULOG_ERR("%d module%s could not be probed\n",
> > -                                fail, (fail == 1) ? ("") : ("s"));
> > +               optind++;
> > +       } while (use_all && optind < argc);
> >
> > -                       avl_for_each_element(&modules, mn, avl) {
> > -                               if (mn->is_alias)
> > -                                       continue;
> > -                               m = mn->m;
> > -                               if ((m->state == PROBE) || m->error)
> > -                                       ULOG_ERR("- %s\n", m->name);
> > -                       }
> > +       load_fail = load_modprobe(true);
> > +       if (load_fail) {
> > +               ULOG_ERR("%d module%s could not be probed\n",
> > +                        load_fail, (load_fail == 1) ? ("") : ("s"));
> > +
> > +               avl_for_each_element(&modules, mn, avl) {
> > +                       if (mn->is_alias)
> > +                               continue;
> > +                       m = mn->m;
> > +                       if ((m->state == PROBE) || m->error)
> > +                               ULOG_ERR("- %s\n", m->name);
> >                 }
> > +
> > +               exit_code = EXIT_FAILURE;
Same as above use -1 for alignment with other functions
> >         }
> >
> >         free_modules();
> >
> > -       return 0;
> > +       return exit_code;
> >  }
> >
> >  static int main_loader(int argc, char **argv)
> > --
> > 2.17.1
> >
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
