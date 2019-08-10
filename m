Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79E688C3E
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 18:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OoU8vsploROF2Mw7tMfTkMg9WtWMLWKpKq/nq3Oyn0=; b=Aca8lT2NzJsW7n
	m6ajdKd/du2TnDoyKHR2meCsC2gJj6zyRVErjQCtZghDB0mMVjxghPBODfPGUV7Vpt28OBrmRJt33
	YQWxNq4sMvxG6oIr8Ll/IyXRkQ1Ed1vd50TCW/McS+S8DsAmnkrwx6ysI9oRCAAKwDjdfQIj6OzOL
	5GQec+VNQVxV0SCNhspsSrcDKoySvO4kMNZOszxZdvgFEouMbdikz15dLohIWG5ozUcC8j2sR+uKa
	j8PBE4dGRFxB6oQSnWR0JqvpbqNcSRbZ+s7+dOXn1tzHTZB/AH5pqcffsY3tiN/DGR8arlA8sQiiy
	GrCJvWPHgP7DnmBzlUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwUBT-0002cw-Tt; Sat, 10 Aug 2019 16:25:36 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwUBA-0002ce-3T
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 16:25:17 +0000
Received: by mail-ot1-x344.google.com with SMTP id r21so138490476otq.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 09:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C06bJko93CmMgbzabdF5wla8aHUabqE9n0yiM65sxRE=;
 b=k+NiJSe91aJSYxh5Jix0Bb+S3J3QRWyPm98Kt1OUF/2Plv7UgEcnf98i8AXaTn09U2
 9R8JL/YCGVgFhAeugJQqwrcLURfL49SXX1g9xO8kvUTVxuh59g+obgQtt3n4QYM69r4Z
 /MvarkKEuCVPmg/796QCymfTlJ38XwhhlmFBCX6bkzb75c15dhE0dZgojm4au2hwSobp
 HBPdnjiNN4NS4E3Pqqxg8C534NFNU2k6FRWKyQbQM5ktVoBtj82f3ISarJumrxsyUHzd
 fh5ip6lBgp3DYiFyc2wEdMuJpGjveBCNYJHJ62NsU+jeLH0W7kB1yw/SKEGIA3A99cD3
 oHMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C06bJko93CmMgbzabdF5wla8aHUabqE9n0yiM65sxRE=;
 b=R9v1FaFgq++aFRQo1/702N/SVmrNAmam/Ok2xvWA3UmQsQvZr4tCpV8tjvG7wHlsnG
 H7QmVI9q25ZrjpVAEBF0qq1Ka6/1gWGL7vtwtAkXHpgQa7i2itONmWBmKsA5euSm0UGY
 aUIXT2sE71g7mhVRpfO+Py7EwAzUUF+j/Z0C0lkmAW23jOCcOQzUf5HgW0PEgTX7P2Nn
 NZXlb1G35RveW/5KSQbyisMSTOOTTzkqqNRG0ZGwt/2yWDhKehroymBHr1EhSIQ4FMTK
 m5JL4dyq2zm4+rhObqARRWnlpOprYFk52StW3dkcK5NxvfPL0+Ko32lhxrYcy9qw8+ne
 8+MA==
X-Gm-Message-State: APjAAAUR2cgy51D7fj0XD2FPC0Ma2PBx+yQoJrREEaCHzb6MUM/LQRV7
 05/EVnrai9EN7Pik4efMnImstF5IYmkJJ7HZR5s=
X-Google-Smtp-Source: APXvYqzuDmgKUr6spNaZ+NKkvLYuoMAQEagNCa/0m8uTuVsF7OStfKGlKOPMIO3H69PHARMD3Vu5vjqWQ5slz9SPiyY=
X-Received: by 2002:a6b:c081:: with SMTP id
 q123mr26325515iof.210.1565454314541; 
 Sat, 10 Aug 2019 09:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
 <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
 <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
 <CANoib0H=v=H8wywMgEtoEZaVLOMQ9JKNfs3FWtWt996kiCxiiA@mail.gmail.com>
 <CANoib0FY9U+LhW4UE9effHuJJabX9QFnmHD0Vj6e_gdCEmzE-A@mail.gmail.com>
 <00b601d54f88$e50b7ea0$af227be0$@adrianschmutzler.de>
In-Reply-To: <00b601d54f88$e50b7ea0$af227be0$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 10 Aug 2019 19:25:03 +0300
Message-ID: <CANoib0FyuspUDhriPmy1U1=G73=Qtyauti6HkEN_JztEpCjjmQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_092516_173314_9F918D6D 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> Can I add your Tested-by?

I tested only one target, it makes no sense to add this. And I what
about ath9k keys. They are a problem.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
