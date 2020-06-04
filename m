Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA0D1EE55F
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 15:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9SA8fAQBtUjfTn2OVn0yr1uFhnZkoSHK9mJxcQizGA=; b=RbCpYJ69GkKMe8
	kM1rxkr/srRyawRgvKgFbQ6sZg5TgJbArDS3TA9BJl5rXhqmm8Y4jTKIvQufkWF4HV6DUKDcureR7
	lt6D+adKC2uNRkxaMMAep1dooKAOVNhj5RmPOtmqxoG419hxP4ozfWfj+AURyGqYHPod8ew3S26LG
	xM9k61xgTzMp2zrUzGdW+FO0bIgk3G/0kbzZqImaHZKB5OWPbOTD/wVVAsBNg4y7qZyf5HCIXM7oa
	pOg77QOzpwrAzQI3lCwxHiSVaRSnK2z9MatqH2tP8bdfUkUw6sjFn9P04NJ+7hGCsK0JMmNxtw3Nj
	l9YefspNX6Pfq2lT4LbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgpyS-0008Cl-Rt; Thu, 04 Jun 2020 13:32:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgpyM-0008BN-9k
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 13:31:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id x6so6072190wrm.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 06:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZoJ44jHBV32je37xyGIomz5AlQA75UcFLe7guMEPhp0=;
 b=gaT5TYAfZbEM2tDnWOGXSGfNzctz1lZUH0ogSheIw6B7o9sC7bVfyqHb0gi9cfCTXR
 DPowcoc2oJ4jWP30ixfztMyfz4bMNKaXeqI+BwX60piBmw4hcSGHlbF3qIcTCmmcVyzl
 GEx6Mq6jktdUZE7V2Y7hD01nbvnc+Ac1o8OgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZoJ44jHBV32je37xyGIomz5AlQA75UcFLe7guMEPhp0=;
 b=m2zYRZb6+5BrNqDYQPtetQKhqxUCgCgDOk+eAN9a+moXgUels4oBxXB/f+QVZ2KJqf
 hinKCYO7AHqSzCoqL7lmqyxpWv3a450EFkrfV4/20MA8dxJT2dMKQSI80d0r4mBVWZ7I
 jeJCWT9dyqtwHLzFsXyl1KVDAruHNjp26sBrJuHaOsk+CcFFoGJKEYeLMKTK0cBNZrYY
 /ctlK5XFRDxvwkgACEKR0+dOtvc7maBcn2OV1+Mwc8ODtSUdvroUCRlggJjXWrOnTltl
 QzSMdi09vt9OUscJmr3QjBQisuaRDFb0tSVrcc4g+XUdIg6uvDcwPLpSa8ipx2pNxIf5
 i98A==
X-Gm-Message-State: AOAM533vB/R9YCbOQXl2V4qgOj3c8zwLV01weLZzpv7+zmmuXzgGu9hj
 fSFjrf+Hz8JhW4N5pzQ7W1kOiGLY7uNuUqOmOTidng==
X-Google-Smtp-Source: ABdhPJw5VEyBU58DlMypZzOyGBlP00UX/RGey7PXc6vfqh7s1uS/Ti2Zpg3wx5wGUOpMJWS43MUYypxELZFt5uQITR8=
X-Received: by 2002:a5d:50c9:: with SMTP id f9mr4708273wrt.9.1591277508080;
 Thu, 04 Jun 2020 06:31:48 -0700 (PDT)
MIME-Version: 1.0
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
 <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
 <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
 <CAJQUmm7XTfcuiTQaGo=w=f9XyTMxNFu8jfw6rxHr8PyEE-pGJw@mail.gmail.com>
 <CALu2O0RUvLaTthbO_jbB=zH-4Cx6ZsGz+nDF8kqfd1Z3Dpc0vA@mail.gmail.com>
 <20200604130245.GO24504@home.paul.comp>
In-Reply-To: <20200604130245.GO24504@home.paul.comp>
From: Stan Grishin <stangri@melmac.net>
Date: Thu, 4 Jun 2020 06:31:36 -0700
Message-ID: <CALu2O0QAghCzd-dYu7TbVuXGpF2OEAXcw1rAEG61nD_nHuZL=w@mail.gmail.com>
To: Paul Fertser <fercerpav@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_063154_343431_7762F023 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add list-enabled/disabled
 to service function in /etc/profile
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Michael Jones <mike@meshplusplus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thanks. Should I replace list-enabled and list-disabled with list, doing this:

        if [ "$1" = "list" ]; then
            for F in /etc/init.d/* ; do
                printf "%-30s\t%10s\t%10s\n"  "$F" \
                $( $($F enabled) && echo "enabled" || echo "disabled" ) \
                $( [ "$(ubus call service list "{ 'verbose': true,
'name': '$(basename $F)' }" \
                    | jsonfilter -q -e "@.$(basename
$F).instances[*].running")" = "true" ] \
                    && echo "running" || echo "stopped" )
            done;
        fi

?

On Thu, Jun 4, 2020 at 6:02 AM Paul Fertser <fercerpav@gmail.com> wrote:
>
> On Thu, Jun 04, 2020 at 02:56:31AM -0700, Stan Grishin wrote:
> > If there's a one/two liner to figure out if a service is running or
> > not,
>
> ubus call service list '{ "verbose": true, "name": "openvpn" }' | \
>      jsonfilter -e '@.openvpn.instances["foo"].running
>
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
