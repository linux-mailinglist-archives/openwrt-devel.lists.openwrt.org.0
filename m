Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468ED77B6E
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Jul 2019 21:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjjZiCjhPpvDIJjyhfJzfIFbWQoc2lO6oyAkHO30rGQ=; b=jl6UXFY1rZGIet
	tFdUyrwV8BOFX5wCLH5A6B5pJAfOyMPTz8PEsZ7QGKgxwl08VvqsNVEKgWlkxBcvwUKkUWYfBMxa6
	lwjIz4dYcbf/ZYeT2x3Wy5q/HpWSyjZTgH1ggtpVddIh0HuL4l4OZDJ56FFCu9QJxPF7eHChPdzpc
	LLtdH//u3hjEzov0H5mGf6VWKlSA9Kd+pTFy9x/wfxniwEb1Jra2KAHm5qdOSGOS2osaYdCfFS1/v
	xxuS+BI26Ss2rcny2QSetpHqIuC9ZsMObh9oLngdUotdIRuZTb4uE6eSuMunD9WGnKuVAPRdoNzbG
	mIXVq15WrjtpGSIUu0Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSBw-0005TO-86; Sat, 27 Jul 2019 19:17:16 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSBn-0005Sk-0k
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 19:17:08 +0000
Received: by mail-io1-xd2b.google.com with SMTP id k8so111732190iot.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 27 Jul 2019 12:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T9K8959T1g7iqOx0UhwBrGohwv1OJXsc6K2Ce3dcJ3c=;
 b=sC58GTIwirOnSFmWPFAuSL+Olw33h7de2rZiCsrwlINPno7ARQI2CfjHcion5vj7Zd
 XDDCE4yql/R7oio/z2zSMJ28CsKQpQBHkQ6fYd0C9eMoZ5GXVp+VbV8EomO2JDKnHktv
 QK2O4hnAdzEoYFaSKZMUfZvJYMOA5Kq46fkssNvSvb4STf4YMJnce4JGwoahwAXsZfRI
 EZgUDuCLXNAxAqRbNp2Bp52ElFpaxYFlmLlh3nIcBaW+qK4Rm0hUeK/M+BwBc2LAuJ8I
 mB0ImeRXkywH5es7H9sLRU1KSEIcE6DsW3eNuvvd0nMgUkOXh9YHga2TKdfQq3JW3oSK
 zdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T9K8959T1g7iqOx0UhwBrGohwv1OJXsc6K2Ce3dcJ3c=;
 b=jbKV5YUPeQ0ia03B1fgjemmJdLD7W09VA2C3fIx2Y3pBSwruUYOBOrWfpRH7rrrJeB
 J9Glx8eyJ/yxf/ZFAmknUHpxOBQctoNNLvDCqp2+m3i1xJNY5xTiZtjuIUUsHkuP09r2
 jUmtlaC3HwXsi5/4Yt/mSszZQ2y8WzDSR9352pj+l9jtidbnkGsWO8wIBW1l3EhJkTsv
 YztaS86CItwdPaWcS8U02XwNltgzFp2Ma7Z9g23NHW9CfL1pdi6GXYMIbkwX+33h9Iet
 5acPTsh/mPVOmp/lzWdSxOizwyt6TyyAwIXO9popDDD517jm5WJzY3yqcF7geH/cGeaj
 Ym9g==
X-Gm-Message-State: APjAAAXTJ4aXEid6+lz2YkCQJ28K4CjCLLE0Boy3q5n0jo73aHGdtqZm
 TDCZvZ1ZHjcc9Xax5eMyY4y3IiE6+qH4f2L8/kIvUPPE
X-Google-Smtp-Source: APXvYqzgT0hiKw8LvbA3XMtRrDLu/k/ahmOxrMpvxXT23sDDsi9eeh0pn9/SanM9U0hlV95vO3SpYWWqpZ46SRsJTHw=
X-Received: by 2002:a6b:f114:: with SMTP id e20mr93334570iog.169.1564255025570; 
 Sat, 27 Jul 2019 12:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
 <c13fa157-eb6a-f18f-7e7e-1f6b774e1f6d@softart-ge.com>
In-Reply-To: <c13fa157-eb6a-f18f-7e7e-1f6b774e1f6d@softart-ge.com>
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Sat, 27 Jul 2019 21:16:53 +0200
Message-ID: <CA+_ehUzG6sG3AQdkszOxcSeg0aP1TRU-VE22-cf7b5dGyMOH_w@mail.gmail.com>
To: Reiner Karlsberg <karlsberg@softart-ge.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_121707_090239_4A6847C7 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Compilation error switch to pyhon 3
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

an additional dependency is needed for python3

Installing it solves the problem.
sudo apt-get install python3-distutils

Il giorno sab 27 lug 2019 alle ore 20:05 Reiner Karlsberg
<karlsberg@softart-ge.com> ha scritto:
>
> Am 27.07.2019 um 19:46 schrieb Ansuel Smith:
> > I can't currently compile my image and i have this error
> >
> > make[3]: Leaving directory '/home/ansuel/openwrt/tools/libtool'
> > time: tools/libtool/compile#0.05#0.00#0.10
> > Traceback (most recent call last):
> >    File "/home/ansuel/openwrt/build_dir/host/scons-3.0.5/setup.py",
> > line 26, in <module>
> >      import distutils.command.build_scripts
> > ModuleNotFoundError: No module named 'distutils.command'
> > make[3]: Entering directory '/home/ansuel/openwrt/tools/mkimage'
> > make[3]: *** [Makefile:35:
> > /home/ansuel/openwrt/staging_dir/host/stamp/.scons_installed] Error 1
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
>
> +1; confirmed. Having same issue, switched back to older version, which worked for me in the past: r10508-1b937cb141
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
