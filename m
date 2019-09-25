Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7B8BD65B
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 04:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WthBsQfWHxJ11W9fvkzaaEkia09hmhRRqsrAWG6Tp/Q=; b=dxs
	ggPz/Dky5IZuHqbdIhUn8d/55GAyX0ek8c11s+MZ0XcuO8kXj2yVITcyQ3QsSl7dk2MDEWqNlFfVb
	HKqEFnAqxn8TWHjQsQhIWCRloSEsUZbsMiZKAO8gbAIXTaEedr4QVckM+TFK6wxFNXsCvBBzcKopz
	DCtc3S/Epql+95G7PudD10qtzfi2atFibP+e16qSGNq/JNWDn1M6HHDkxH8ZP1eV+TSPl8HsTAu3A
	om2OPQyVOx5IJ6xBLb7sZo6rH5ku8zJzauUNW39QPeU08olYWcntgPbvPcHRMeEsH+PsRQ0tMhqpt
	8UheIdIFPUkwgcFHV1eLfkTghcKCLYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCwzP-0005nY-44; Wed, 25 Sep 2019 02:25:11 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCwzD-0005ad-9y
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 02:25:00 +0000
Received: by mail-oi1-x22d.google.com with SMTP id w144so3540728oia.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 19:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=sZoEAnT/SBBWn3gXlQWoMTKEw/Srv9CKE5dZuEtsOs4=;
 b=U6qXufUfYYWli2AU7z2S3Ai/qHFt1nG7TavtXzoYLCsMKDQRvW+OqkdOK0/kf44ynK
 H1b6RdljmRUm9hUnL7lwO7SPLAGa60RmhsnGq451Jt500gPZQWmMBkzYEtgyyHh2FE/F
 v3bbP2VW0ZZoKR4TQ84AJfCMU78J7OW8R6WYQ+dPeMpEOk5ymiMcjmnRWR9nT3jAYhxN
 r8TJsQnLSgmSmvEt9lRnGiKNFQSTy3Wpk2HpjO7chEmpfztozRpgc7VgmqtmiVmXp6UV
 yg1EwqAz/7Bmq0X/TqZMx/xGKPCRvtF9010IFiXoFyevMRHTJ+4D8j80pRMg9jBgbt9w
 4Ymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=sZoEAnT/SBBWn3gXlQWoMTKEw/Srv9CKE5dZuEtsOs4=;
 b=bSY705rBSi5Hb6xMOuNByMB3pAwzqwIWx0jehJ0Nq/ICxWLOJYSrOF0UHV4qNTSQTI
 U+AWtQQADa6bmdRUjs+DHKvdpxCMSocHLUa8BfU1XcvSWFdcGOns9TDbFrXBeQpE6YrQ
 rEpk2fNmgLoi+QOcnhmD5bYASwfErAVN8VZDc1dgFTUYNZVNp0iJzrtIBudU+b7sfLY/
 Cd0pQAQ9M+RzUtwKyFIr4ulnNJcK5b9JoaCDqz2MK9cnSjQoBvyE4u3RXsmPs0OjselL
 rKqZhnTNRLdceEJy58zssBYlL1m4x8rOV01jST215jjMKmLsk4hxRoybqKlxpdiNlUsK
 uynQ==
X-Gm-Message-State: APjAAAX5+FAHG3bMHMpMB+2685pMO0SC0EL+36MD7RdZhVd9sN5ZRyvQ
 0hvHkIARRRcg3Ss5oPI7u+4rswAxmRYg/jUjbsTjpuvl
X-Google-Smtp-Source: APXvYqyud+4CoPsPO5zrQJhHvvg+RtKPSOADRBdd6jI5kOY4dT8YOTvIGqgpmfbWOPQGuCsiX8sNAuTllfZ8QTMhHeM=
X-Received: by 2002:aca:ba57:: with SMTP id k84mr2660655oif.167.1569378296747; 
 Tue, 24 Sep 2019 19:24:56 -0700 (PDT)
MIME-Version: 1.0
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 24 Sep 2019 19:24:45 -0700
Message-ID: <CAKxU2N_pGAFTktQjFeYdfZBZi8SR6xfkp3F+4m30C0KUeOxo2Q@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_192459_383961_FD79DEAD 
X-CRM114-Status: UNSURE (   3.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] umdns not compiling with GCC9`
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

/home/mangix/devstuff/openwrt/build_dir/target-mips_24kc_musl/umdns-2018-01-02-78974417/dns.c:
In function 'dns_consume_question':
/home/mangix/devstuff/openwrt/build_dir/target-mips_24kc_musl/umdns-2018-01-02-78974417/dns.c:261:2:
error: converting a packed 'struct dns_question' pointer (alignment 1)
to a 'uint16_t' {aka 'short unsigned int'} pointer (alignment 2) may
result in an unaligned pointer value
[-Werror=address-of-packed-member]
  261 |  uint16_t *swap = (uint16_t *) q;
      |  ^~~~~~~~
In file included from
/home/mangix/devstuff/openwrt/build_dir/target-mips_24kc_musl/umdns-2018-01-02-78974417/dns.c:37:
/home/mangix/devstuff/openwrt/build_dir/target-mips_24kc_musl/umdns-2018-01-02-78974417/dns.h:67:8:
note: defined here
   67 | struct dns_question {

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
