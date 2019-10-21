Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E48DF0CA
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 17:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IuiD7VN52Lu+niQpPj/74q7dgP8XEk7IxZpAzUssYNI=; b=R4s
	SMwxS3p9xxwH1bvWQ9dYWnRxPIx4Jg1lYLQRcr0OeJjpDw9hEMGiBOeLjgRby/tHXOTUIie8c/gFT
	lqNS1D1sBUADV7z7Grv5okA67nBItFkSc1e9A4u7K/egdSutwXxkvf6rZJZcoCmK1ZGBPu+Ep1t8c
	+XOECkCgk5LBz3JDynRXCESDqYnNlgpCGyG8DTIvpeIS03LOawvkf8LgkDkH7cQMKvAvO9VZNAoR2
	scNDpus0ipVHaadYPFURKm/L6oBaWRujBIsTO1lSunK8ZZxcy83SM3Bt9+RXOfztj5oGGYSPimXFq
	SZQIUX95nW9PuDDnlX+j8fMXWFvbBdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZF6-0001OD-KE; Mon, 21 Oct 2019 15:05:08 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZEu-0001ND-2b
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 15:04:57 +0000
Received: by mail-lj1-x229.google.com with SMTP id 7so13727033ljw.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 08:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=nOBrlR4uP8oUHv9lBuNbnq4pcjUpKdkViEAiQ+rq0ss=;
 b=iqZh/ElZ7TG6LJVRISlDHDpiOM89cehcDOkCqy1Ww0VQVZBUKhgNbSR8vy/ViWs2X9
 /Vuekf0x0m0FMWRar7x8lXq0Rz7t4QiU9X800q0O8g/qyzcUupA4dCJJ8jI1gDUmZwdP
 Y8BrUz3s6kptySu76jkVMTW2Uqt8J9ojHi4GvIXPbCpxBmMxc2/6NUlbuQtUH1sruWJA
 l96XQdVXIjNoYuh3xpIOLRtqNTxX22Z4U/rmZTNP03wVsW17ZXPGTUUhQJV/8bjvcA/h
 fIOjEMjVFohDtGRX5jrvX2qvo6/pT6iXwMn89HS+R7no6cK1UUqWZ3lSLcjQjCVRjFEH
 VhbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=nOBrlR4uP8oUHv9lBuNbnq4pcjUpKdkViEAiQ+rq0ss=;
 b=crZcC4gb25L6LY0PlPxFWU9ubnVbsoWBDZnMfKO24v3FFLXVAqj7wkiKEPUFl6teSd
 baUdqseoTQU2ppAJG/+PGl8UmEmV+JPCc5jBfkkVzMTjxUFek+U8/vnSsTh6fhcD9V9r
 Tu4K/OsRrQ0TqYokYZ5ow97UpDdQpnzN+D9B6PVHpAljsykMbNuxiZT20QSjetzatZwQ
 0syUP3FFtZgnTqKdOg7KYPn0qaNzkzmKnIJ7w4UjmGOAKtetGZvxgRaXOHcMm0OIld4x
 4LurDSn5MfSvTNtRlEW9J2c2n/MgsI3jglEGK0J9iNtqZv29FWDkgoLMeljbM0MEEUaG
 A+wg==
X-Gm-Message-State: APjAAAU3XIbjOfrcyUwVZyqGBvm4/kd1QUMlG58QRlXwc6XBO+OEoLoK
 R6E3O/yFO8PUavjiFMrKOHRIp6FhGEuUmaaJUHep+USE
X-Google-Smtp-Source: APXvYqy6vbgW4u5E+1+TGVkwgNOu4FhWi3s6cPujILdRw9m+IsHb8EvoomRyCySkYkibTwYaAn/rzztQfRbw6lYGCeE=
X-Received: by 2002:a2e:880e:: with SMTP id x14mr15091963ljh.42.1571670290785; 
 Mon, 21 Oct 2019 08:04:50 -0700 (PDT)
MIME-Version: 1.0
From: Martin Tippmann <martin.tippmann@gmail.com>
Date: Mon, 21 Oct 2019 17:04:23 +0200
Message-ID: <CABL_Pd-PQmWjkA9Zhtgv6VYq0DLbKu04JXwWgXywR8br_sffnA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_080456_143319_51B58549 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.tippmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Hang on setting $PROMPT in master
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

We are using a shell-function to set the prompt based on return code -
it works fine in 17.01 / 18.06 / 19.07, however in current master when
the function is run the terminal/ssh session hangs.

how to reproduce:



<--- hang.sh:
#!/bin/sh

prompt_set() {
   face() {
    local rc=$?
    case "$rc" in
       0) printf '%s' "$1" ;;
       *) printf '%s' "$2" ; return $rc ;;
      esac
   }

   local e='\[\e' # start escape-sequence
   local c='\]' # close escape-sequence

   local user='\u'
   local wdir='\w' # workdir
   local host='\h' # short form

    local reset="${e}[0m${c}" # all attributes
    local white="${e}[37m${c}"
    local cyan="${e}[36m${c}"
    local yellow="${e}[33;1m${c}" # bold
    local green="${e}[32m${c}"
    local red="${e}[31m${c}"

    local ok="${green}:)"
    local bad="${red}8("

   # e.g. user@hostname:~ :)
   export PS1="${cyan}${user}$white@${green}$host:${yellow}$wdir \$(
face '$ok' '$bad' ) $reset"
}

prompt_set
-->

now source the file:

. ./hang.sh

shellcheck does not complain - I'm writing because I'm not sure wether
this invalid sh that happened to work anyway or is this a
bug/regression in ash?

regards
Martin

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
