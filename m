Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490461A167C
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 22:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LEEQsgl1ABGWScvu0bZZc3uD5qhHTXwRNUgs2I2buUk=; b=iLevOgRruVk0hU
	tHFvXmWZJObVGPTdCAnrlc9lIIYxvxMComJUnTwZkTSa1qAn1xIZVgjgVRwt9ci3WW7IaZ2OE9tn8
	3fgjYLvwavxzXhtrPy/BqcxmBO8qTFOIhFoWgDYI6sBMgNALdjc6sS0xvksGNAU3DfjC02pPdwhFi
	91gROvf3jBkebNE4iGYIZzclXDPMuNA0y8h9GXB4gsxE5gxJsEvLoqsX29CaNZxlJh8Cb++UpkZiX
	WpwNZ7oOeLJt32x1NJvUAPRp99ZvsCL+6mcArPqg5Itktf1OlFS/iE7SoOsUeBVnwsZABzLL7ywKQ
	aViRS+OTQB/oDGERmMpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuVb-0006U2-MZ; Tue, 07 Apr 2020 20:07:43 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuVT-0006TW-As
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 20:07:36 +0000
Received: by mail-qk1-x744.google.com with SMTP id v7so808565qkc.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 13:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N8qkNH9DpEji3b5kqrQcgGJUzw80vUWbOvDGs1vE2p0=;
 b=FYMVb46fatTayA/exRdban1eGI7xsXueV+lQjGlT4wTHQgRQB6fTDpJDF9iRH2CQCH
 7sV54/rAQcgeOdzLiu2ykST9hz2qJ1YyiRabdQXpQYpXK7dWhDo9EwDs0lkekrQBzdRe
 rcZn8VSxscsUTY41MGUZuxyD5xMVftUQnrE8WwFDCjFkmJ4bTkKQnzRs1Qa9PVAgNULT
 86OQckzmkqCkh8iwNVjvvAGVNQie2gljm2T+n5Y81r5zDgzbFFlQNEfNAi+nAimK2jcV
 fF5/5siqyyFc3f+eWpeXRruW55/ozCz573+LUxyq11ZbIzRfXRorZTgjBSc4SrMIU3Yf
 1hYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N8qkNH9DpEji3b5kqrQcgGJUzw80vUWbOvDGs1vE2p0=;
 b=Zlvi/C7i94NpSkEYGI7Jl7Ym/fHL6X1E3P9chGRIEkDJEpS+8Xw5K2/9HO84xVuxLn
 qIEmm0pSIC5mUYPIzCT8tV/vGdvhv7nTETm1gQwJfH3kiJr8I7kt5mSq41/K2odNdXN5
 YYHn1udVMs2wWs2DrZdmdWV1kClyjPID07xkoIN5uVX2Xt4XJGpL7djweuizcE1/RCrq
 f7tsPpewSeDA460EGMAAbWzSLyIyyqGbQsM1U0MMYLGEe4Eo2495/ueK0OwakQip+9o8
 R9woHaj0KKtzOJEMaxJGy4N6IMGPDa7rNxC9IsfquWikln1Eii8hB63qXastvgqtueKO
 AT0w==
X-Gm-Message-State: AGi0PubFQBb1X4a5GUE8FChVYBQprmuQFqpa4m6d/pWgfXqbywrKSiAv
 6kfAwN7yeUiiZYOSLoi6yJp/RnuCJKw=
X-Google-Smtp-Source: APiQypI9IIofx6FY6o6mBg4twr2nVxhG1vt4RsHVgL9mWoOVRg5jkvISs6zkda5hw4gReY+nkqwkYg==
X-Received: by 2002:a37:b185:: with SMTP id a127mr4281717qkf.224.1586290053343; 
 Tue, 07 Apr 2020 13:07:33 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e10sm4913365qtj.76.2020.04.07.13.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 13:07:32 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 17:07:18 -0300
Message-Id: <20200407200724.8308-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_130735_398783_A8AE1B7C 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 0/6] build: update scritps/config to
 kconfig-v5.6
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The full cover-letter is in the original series. V2 is about shipping
pre-generated c/h files to avoid depending on bison & flex.

The _shipped files are gone upstream, so I did not use the previous
scheme, of copying *_shipped files.  Instead, I'm shipping the *.[ch]
files directly.

I've made it easier to generate the files if desired, by running make with
BUILD_SHIPPED_FILES=1 (the actual value does not matter).  It is
documented in the README file.  Defining the variable changes make clean
to remove the generated files as well.

--
Changelog

v1->v2:
 - Added pre-generated *.tab.[ch] *.lex.c files to avoid depending on
   flex & bison

Eneas U de Queiroz (6):
  kernel: add @IPV6 dependency to ipv6 modules
  busybox: quote 'source' filenames in Config.in
  build: define RTC_SUPPORT as a bool
  build: simplify building *config targets
  build: scripts/config - update to kconfig-v5.6
  build: add option to warn on recursive dependency

 include/toplevel.mk                           |   15 +-
 package/kernel/linux/modules/netfilter.mk     |   13 +-
 package/kernel/linux/modules/netsupport.mk    |    6 +-
 package/utils/busybox/config/Config.in        |   44 +-
 .../utils/busybox/config/networking/Config.in |    2 +-
 .../utils/busybox/config/util-linux/Config.in |    2 +-
 scripts/config/.gitignore                     |   29 +-
 scripts/config/Makefile                       |  179 +-
 scripts/config/README                         |   30 +-
 scripts/config/conf.c                         |  248 +-
 scripts/config/confdata.c                     |  533 +-
 scripts/config/expr.c                         |  216 +-
 scripts/config/expr.h                         |  110 +-
 scripts/config/images.c                       |   34 +-
 scripts/config/images.h                       |   33 +
 scripts/config/{zconf.l => lexer.l}           |  340 +-
 scripts/config/lexer.lex.c                    | 4499 +++++++++++++++++
 scripts/config/list.h                         |    1 +
 scripts/config/lkc.h                          |   58 +-
 scripts/config/lkc_proto.h                    |   21 +-
 scripts/config/lxdialog/.gitignore            |    2 -
 scripts/config/lxdialog/check-lxdialog.sh     |   91 -
 scripts/config/lxdialog/checklist.c           |   19 +-
 scripts/config/lxdialog/dialog.h              |   23 +-
 scripts/config/lxdialog/inputbox.c            |   22 +-
 scripts/config/lxdialog/menubox.c             |   25 +-
 scripts/config/lxdialog/textbox.c             |   17 +-
 scripts/config/lxdialog/util.c                |   15 +-
 scripts/config/lxdialog/yesno.c               |   19 +-
 scripts/config/mconf-cfg.sh                   |   50 +
 scripts/config/mconf.c                        |  179 +-
 scripts/config/menu.c                         |  451 +-
 .../{zconf.tab.c_shipped => parser.tab.c}     |  939 ++--
 scripts/config/parser.tab.h                   |  129 +
 scripts/config/{zconf.y => parser.y}          |  429 +-
 scripts/config/preprocess.c                   |  575 +++
 scripts/config/qconf-cfg.sh                   |   32 +
 scripts/config/qconf.cc                       |  174 +-
 scripts/config/qconf.h                        |    3 +-
 scripts/config/symbol.c                       |  268 +-
 scripts/config/util.c                         |   86 +-
 scripts/config/zconf.gperf                    |   49 -
 scripts/config/zconf.hash.c_shipped           |  250 -
 scripts/config/zconf.lex.c_shipped            | 2533 ----------
 target/Config.in                              |    3 +-
 45 files changed, 7798 insertions(+), 4998 deletions(-)
 create mode 100644 scripts/config/images.h
 rename scripts/config/{zconf.l => lexer.l} (50%)
 create mode 100644 scripts/config/lexer.lex.c
 delete mode 100644 scripts/config/lxdialog/.gitignore
 delete mode 100644 scripts/config/lxdialog/check-lxdialog.sh
 create mode 100755 scripts/config/mconf-cfg.sh
 rename scripts/config/{zconf.tab.c_shipped => parser.tab.c} (73%)
 create mode 100644 scripts/config/parser.tab.h
 rename scripts/config/{zconf.y => parser.y} (64%)
 create mode 100644 scripts/config/preprocess.c
 create mode 100755 scripts/config/qconf-cfg.sh
 delete mode 100644 scripts/config/zconf.gperf
 delete mode 100644 scripts/config/zconf.hash.c_shipped
 delete mode 100644 scripts/config/zconf.lex.c_shipped


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
