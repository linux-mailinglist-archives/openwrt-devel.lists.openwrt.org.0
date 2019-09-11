Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C51AFB03
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 13:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvqwCzTk733TCgTIW1j6UFhTlQYLar3SaQsYmrSdaas=; b=guLglweNbLmhB8
	R21UOmcmaioCpfXD2zA7Pr7Phl+m7lB0+30h1pXQ6zraQcw5ofd1jVgWwyFadZMtSWv3JbEIRVqQx
	swNdi55WGeRtuFfSwHkfA89oXhSVim6SbF+dGrxsUDc7S//weMQGXoGVwvUXRJIn8gqnVv+hRKTLW
	4kzR/IHUMcaHo6pkiiG7bJmLM3WaSc+KsugvZM2eF4dBxIoSubfqt/zlHdGg7nGluv0XTJ9rcFHCW
	gmBwJ33cGasuT/++9PRc0SqtcwLk8Xavr2ApEXXAOcI96+Dv4BjHLTkKhR7osyfjsv1m17hnJ04bV
	dec1I5hdlh0H5jXKh78A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80MY-0002SJ-4b; Wed, 11 Sep 2019 11:00:38 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80ML-0002RM-4B
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 11:00:26 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id o18so7217367ybp.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Sep 2019 04:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gaRpBmDCg2jDnYml0eDex9KKvc1njtGc5V18eWS8IK0=;
 b=HuJBM9+B5TKn2UMjBbl/xTV3UdeRSSp4U4h/YghR98g8AZKnSMPNFvzcTnTvR2k9cW
 MbubxgVv6iOpHXqcvzExDIzGIHF1nM+wzDfxjqPvC8WP0OIsoXcEXf7LDw3JKf7dux4Z
 9GABxIO7qemGnnfoBU4eF4/qWI8wKrbRMlrYBuBqxGD5I193mxV0rE6g2tbEntaCE4EB
 5Dtn9w3/DeW223XXAtevzDMJVg4Z7av2XQqgbheAZwi+kzESTOGx8DLszVPehA4Ztg8g
 Mj1lrX/R+6Dgw7fYqXfNqlGrB35z3q3/pQlSqf1VkuTub0+ZtZ9xzS5IiRu9Be4y9yNc
 CeXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gaRpBmDCg2jDnYml0eDex9KKvc1njtGc5V18eWS8IK0=;
 b=fYSqfpOkZL+Z6ps/3s2NwISTApi2ZZL/Xln0SGUIqrqtwpHZ6BQMi+lz9447MC2hOy
 96wnIB+TzeUmf6ci+3Hm4jyTNTyi8Kz9P8pjZVWl/6kE8hjYffBMQ4O3mh1zCchI4oe9
 P6b2a81vzE7mxkfwmdBXDZOeX/jq2J1OmSLdtuzbBz7pYYVh+Lcp60Y5EMfTi6SNfijq
 qv3NQcWBAAREqMzollpyS4uZtn8NxjuEIGWb7YeauPWgQyVRSqEUOc1gU5/B/+PNj7le
 HP+YcpEhwFX5EkUrbNaANftbUPorjQ64/iMD/dfTxE75Aw7YHlhpOgvg7P7fI8s4/ANW
 a0LA==
X-Gm-Message-State: APjAAAV8GkLgaJj0rTOwA27d5MOEckC8akc4b18GfWzmdGGKzvEH5qCw
 Mct27FM5cmvqFk4i07vtuPBtnnxRtHrVV7JJ2JHy1g==
X-Google-Smtp-Source: APXvYqwR+uE0bEob0XZ7gDdJO59JQTbrJcGjbatK9fhj9sCr0+4D4rEFZ3efKIvD6gZqXPGeECx+KGpaQ1TNHtW4KH0=
X-Received: by 2002:a25:aaf4:: with SMTP id t107mr24506567ybi.71.1568199623808; 
 Wed, 11 Sep 2019 04:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <CACna6ryNB2PN2qwyctK7aTVnvhB+F6zTjGUMs=6vZ4XDeAyF6A@mail.gmail.com>
 <CACna6rzL6guvd-MGOUqXRP_nCeFxmOwjqxtcNoGhV0vNC701Wg@mail.gmail.com>
 <f72f164d-ef33-41be-2c17-c1d9e84b51a3@ironai.com>
In-Reply-To: <f72f164d-ef33-41be-2c17-c1d9e84b51a3@ironai.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 11 Sep 2019 13:00:12 +0200
Message-ID: <CACna6ry6O1Y=mZzVncWiTjTXeX9fu3wDuBnFrboQJpgwOcyL-A@mail.gmail.com>
To: Vincent Wiemann <vincent.wiemann@ironai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_040025_187113_74D2C243 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b2c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] sysupgrade: extending firmware validation
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

On Wed, 11 Sep 2019 at 12:19, Vincent Wiemann
<vincent.wiemann@ironai.com> wrote:
> Hi Rafal,
>
> better error messages for sysupgrade is a good idea.

Hi & let me ask shortly. Did you follow the recent development? Saw my
improvements & pending patches?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
