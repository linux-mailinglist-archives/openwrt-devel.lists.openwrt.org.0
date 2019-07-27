Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C1277AD7
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Jul 2019 19:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iXtEsX2dVeIeid9Vv7wVm97WYb3z9+UglIcpAtEAyXY=; b=Tin
	ny5CPCnmCSNrR89l+vQfL/QtnP85/1BafGRzNCKsk078BIx66p6S5K7a8D0bCZnFCST8jdB1SfDCC
	kvEyeNrjmSrJao0Zq12hk33LuCW0LXvsygRloNfk2A2NZbpTQQkPBGhoNS4dWnwudaZV64zHZZLnJ
	Ej0ibFhloAlaXwmstMdOhpvaaKqZU5Okpstf2wgvfmu5v+GOpK0TaQtWt0Nu1ygKmDXEIQQulyhXw
	4LUP7JE+tK4cY6PpzHNBhFJJuShV+OW/dQzYO/YNkk+cxB4K/dMA/UC83ZdactgrOODgvpgWMvfhF
	nO/VI4PjfgcURQcyfhDJsR9tpJ6bQHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrQmn-0003y0-Bk; Sat, 27 Jul 2019 17:47:13 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrQmQ-0003xi-OF
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 17:46:52 +0000
Received: by mail-io1-xd2e.google.com with SMTP id k20so111368922ios.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 27 Jul 2019 10:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GZOlwKSczy5kLhoJPYRR159fW2j0PCC4YWCwtUnkd6w=;
 b=gld+cXDL92iaLT8rP7o2URLh9kN+P5YJgHhFwZST/glBOy4FL8mfRunzasEqDlsxYm
 /ZjelzppZep71y2zLzNdZpOGkt7+J7ufbyzYwYPIDw+ENTGuyALeSQunxEsUxM3ZdbkZ
 FZOt0MM+uDvSojUTlrke0hUYKusszWL2UeQaTa6XvI5MW29Jrw9NL4uHqfLBlW0JibuW
 5hZB9oKodqPnNPw+RpbAITyE6rsK2ZatSui4p6DP/IZVV+Z1k7NNw/GaMEHvdBIkP44J
 jvAZr6fPXy38hgOpWNSW3pP90EsvOK9BN4Jh4L5PqpENdo+SmxXx9yqaHcVRxFamSlSF
 YGCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GZOlwKSczy5kLhoJPYRR159fW2j0PCC4YWCwtUnkd6w=;
 b=Q1Qe95NYXOwhGejz/oGUlHfYetGYY1boqFj15aqLyuS6ToTkeT0BqAVtDgl5YRnspf
 jyPTiYPWD/m0IekUppQFFlb4TO33v/0I5zR2fkZXRI5sbWDTLIUwxyALK2Ld27EVlcr4
 iI9XHVuvhju+cZaefpCpn9xnfnqP5BM8S0zkdQXPl5jMHWfU2NdA9uk6HCvq8uScYM44
 x24Jr6UecX0KmmPgAlyNX9nJGjT06m+OPD1PEfZO/B3NLpIUYqGw4JGUdNCFvgNxod5t
 KqSeTZY05uygyz7haCepbaGyBfwlK2V5T5EJ6jKOkYojeyNpJRSsSvo0iq6hdfgzn0S8
 UrCg==
X-Gm-Message-State: APjAAAX/pbfpaHK8Q3+0cb5wNs1GygME5xk23q3nbB6AeOGHQzGZVe6X
 RS1jtzl+dwlBhaSeG8WtVOZLYh1bXpCPJbfO37WWY9/e
X-Google-Smtp-Source: APXvYqxDDk+onkN3cV1bS067G1IvkWofTe0K7iIXniyIEb59Yoo5tjfUz2ewB2YJJnADeMN5o3xwXC7vfPKu2gx8L3I=
X-Received: by 2002:a5d:8252:: with SMTP id n18mr25784857ioo.230.1564249606782; 
 Sat, 27 Jul 2019 10:46:46 -0700 (PDT)
MIME-Version: 1.0
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Sat, 27 Jul 2019 19:46:35 +0200
Message-ID: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_104650_814046_D666E47C 
X-CRM114-Status: UNSURE (   3.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
 [list.dnswl.org]
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
Subject: [OpenWrt-Devel] Compilation error switch to pyhon 3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I can't currently compile my image and i have this error

make[3]: Leaving directory '/home/ansuel/openwrt/tools/libtool'
time: tools/libtool/compile#0.05#0.00#0.10
Traceback (most recent call last):
  File "/home/ansuel/openwrt/build_dir/host/scons-3.0.5/setup.py",
line 26, in <module>
    import distutils.command.build_scripts
ModuleNotFoundError: No module named 'distutils.command'
make[3]: Entering directory '/home/ansuel/openwrt/tools/mkimage'
make[3]: *** [Makefile:35:
/home/ansuel/openwrt/staging_dir/host/stamp/.scons_installed] Error 1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
