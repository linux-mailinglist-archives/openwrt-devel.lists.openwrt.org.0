Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7041669D1
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 22:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BoEZvHTLmAjozNUGwaR6ihvTBbRX337Go0v9ictw1WA=; b=HZvaLOcNKFeoZl
	mVQxA1mXx312wJDIo4PTsi+ANFJdk9koiLqDVPsTj8VjwLAFCVr9gGkeY/pIVH38h3DueYFGqv9eN
	1e0kzcv5zdC/R9QkP2fR7fHco5LF+5WyQ61TfFJeCZyOS4wMmTpDsffBtUipoVsYQwCgs9DMpIBM6
	3bxFVsqta4juiIkNAHu06FvNNZVitQFPY3Gvup8Xc/H0t8cg911bNfkrSbmlfOp4cmJ/jEQzB33JR
	TdfLm6THWVBZS7fH32ReFHzUYxdIjWnvi/Ge1ADD0jLinUUuoz9v/5KFoEXLoWDDrPQ5jpOD4nEfL
	fmOaz3ZCunWe6G2uLbZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tOD-0001Zu-JS; Thu, 20 Feb 2020 21:29:45 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tO5-0001Yi-JV
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 21:29:39 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id p2so81876qvo.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 13:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aGjhUgH+76IHtIy9tchgPt9yKTJ92AnCGsIUs4O1n30=;
 b=GhPrJJbV+NnfwYABI5bJygX5+VWQhovF6nnRAp0rbNVxUT4KMenb7RuNU+ZW39ed0s
 V/VFwUjzX5+DcA7loDPu8dVfu+KRX6P0KNFxEMrkTUyH1e0553nZnNFq31Ce/H2hVuE4
 ImBpowXahNiwIKKKrRB5NGIoh3s006MtOPSeTKKa9kO+rk+i34yzE9vYH+2qGbmXo5XT
 zOp+ytjztdXfcesrTRHOHgjJCdipoWm1Jht7cbFk0nROLlHTGwKmlH1eEBPcyka3halU
 2ln5pO3Q9EVtKh2flRnWDbKhJdtnfnzHHKiaKkjlN6d5o9W/xGvAm9p4ig2Bu5o0k8cO
 tktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aGjhUgH+76IHtIy9tchgPt9yKTJ92AnCGsIUs4O1n30=;
 b=OpETmvo3or6ZQAvMM7PStUKy6YuNyZKywqHsBlSFoQDe3IIs9cpDXUMSFo/PEBo+0g
 HRHMGpr5VnjKWs/26kgwsfLDUj/afA8rOfrroEhtIW4C+1i+ygqRxmbhC+KfTtqNqB12
 aZRCbfGvAk4TLY4UDTZj5I9RVauGkx5WyOj82I3ii83vuUuUx0wUBiteaKLE0fR2s32z
 t4hWWBQG4bnbyEIdVHXdNxuoRfhsKHyVFC0swvy1rvW4xmuG6RjOV0KRKeaRwHRlBQDr
 SvE/778s4MfhPlRsHj+5siB1j8QGx79iVVU1PS+JkdY4cgZpE0SUHS3/YR/Qq+hVm4ZU
 pI8A==
X-Gm-Message-State: APjAAAX83YTH/l3mfxIrFOZwxqTzNEcnjmT3A5dXPqMLL3LkFhVvuGUi
 E409JzxNf/0ZsCaGpqUeZj5oAkWy
X-Google-Smtp-Source: APXvYqwu4yaHuT0izWNLvUTrH3s24ItlW2z6KYt4fhpK8igTWZYWgHfRY8La4QmVpWIzj5JFIXlHjg==
X-Received: by 2002:ad4:53a8:: with SMTP id j8mr27493024qvv.149.1582234175621; 
 Thu, 20 Feb 2020 13:29:35 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id t23sm412480qtp.82.2020.02.20.13.29.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 13:29:35 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 18:29:01 -0300
Message-Id: <20200220212904.2444-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_132937_646078_0841DDC2 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 0/3] build: Avoid 'Argument list too
 long' error
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TLDR for those who have read v1:  I've come up with a good-enough, but
not perfect wildcard pattern, and added it in a separate commit.

After building all of the luci packages with all of the translations,
if I either run:
'make package/luci/clean' or 'make package/luci/compile', I get:
make[2]: execvp: /usr/bin/env: Argument list too long
make[2]: *** [../../luci.mk:285: luci-clean] Error 127

This is caused by the call to scripts/ipkg-remove with a list of over
2,300 packages matching a luci* wildcard:
$ ll bin/packages/arm_cortex-a9_vfpv3/luci/luci*.ipk | wc -l
2307

My first attempt to circumvent this was using xargs.  However, using
echo from the Makefile results in make calling the shell with the same
2,307 file names.  The solution is to have make write the list to a file
and then feed it to xargs.

To avoid creating a file every time, xargs is only used when the number
of files is >=512.

As an optimization, to avoid calling wildcard twice, I've defined a
RemoveOpkgPackageFiles function, and added the check for an empty list
there, so that the call to opkg_package_files would only be done when
the new function was called.

I've put them in separate commits to ease an eventual reversal or
rejection.

If we change the wildcard pattern that selects the files, we can
eliminate the problems with xargs, and avoid 4,612 runs of 'tar -Ozxf'
when making package/luci/compile.

There is a caveat; it will not remove the .ipk file if the version of
a package whose name ends in a digit (e.g. nghttp2) that was currently
built with an ABI_VERSION, but the version of the new build does not
have an ABI_VERSION.  Then, make package/nghttp2/clean will not remove
the old ipk file.

I consider this extremely minor.  Nonetheless, I will leave the
intermediate commit, since it works in 100% of the cases, making it
easier to revert this.  If I should rather squash them, let me know
which commits should be kept and I'll send a v3.

This was compile-tested for mvebu, and checked by adding $(info ...)
tracers to the new functions and to opkg_package_files in
include/feeds.mk.

To check how many ipk files each package was selecting with the new
wildcard, I've run the following script in a directory containing all
packages that I've build for mvebu:

#!/bin/bash
total=0
packages=0
for f in *.ipk; do
  PKG=$(tar -Ozxf "$f" ./control.tar.gz | tar -Ozxf - ./control \
        | sed -ne '/^Package:/{s,.*: ,,; p}')
  SRC=$(tar -Ozxf "$f" ./control.tar.gz | tar -Ozxf - ./control \
        | sed -ne '/^SourceName:/{s,.*: ,,; p}')
  if [ "${SRC}" = "${PKG}" ]; then
    files="${PKG}[^a-z-]*_*.ipk"
  else
    case "${SRC}" in
       *[0-9] )
          files="${SRC}*_*.ipk"
          ;;
       * )
          files="${SRC}[^a-z-]*_*.ipk"
    esac
  fi
  n=$(echo ${files} | wc -w)
  if [ "$n" -ne 1 ]; then
    echo pkg=${SRC} - n=${n}
    ls -1 ${files}
  fi
  ((total = total + n))
  ((packages++))
done
echo Total Packages=${packages}. Total lookups=${total}

If you want to see the old wildcard, always use `files=${SRC}*_*.ipk`.

Before the change:
Total Packages=8213. Total lookups=16689
After:
Total Packages=8213. Total lookups=8838

ChangeLog:

v1->v2:
  * Renamed the new functions using lowercase and underscores
  * Used '< file' instead of 'cat file |' to pass the files to xargs
  * Added a commit changing the wildcard pattern, reverting the use of
    xargs.

Eneas U de Queiroz (3):
  build: package-ipkg: avoid calling wildcard twice
  build: call ipkg-remove using xargs if #args>=512
  build: reduce number of files passed to ipk-remove

 include/package-ipkg.mk | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
