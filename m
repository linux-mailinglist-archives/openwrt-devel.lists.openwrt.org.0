Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2B3A4888
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 11:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyOdFlpn1+xUGBIRtCMigw0sEauNh/hv6N1F1W60CWY=; b=bKungU7MN02/5P
	2FXyJx4+MyrLI2mnYgExuX2SKOTDtDGT/T4Ykfene7ZgO/O961GQspFbjVfWDP+qAUNgoTe09W2Pz
	NK/0AiHsgunitZILfOxPL/H7skUVP1HoTLasJ+cPCMuh3WYvvBGZbhPU+RAqnaXkkXceoieaykmLi
	XuTEV4Pso0GmrI8fyu04YSQCOZg4VevWLIJxwqFspptxhWU87GHdhtAZ32IEV5FQfXRQs+YkhCh/p
	lj3elb+Z2wEGWXWlHBtbcGBu/RzuNX0D4hYODn9lJFVd085UaBCL2yqiMcRQgso/OSFfW2i9TWVK9
	ZbHzDFFGKk61CME47uRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Lra-00080B-Db; Sun, 01 Sep 2019 09:09:34 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4LrO-0007zq-VO
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 09:09:24 +0000
Received: by mail-yw1-xc44.google.com with SMTP id z64so3844151ywe.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 02:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ts+SfjkV9IVT2Tp9q+IQRYfpnHrFD7V4c9G/kb/CUkk=;
 b=DKEoGZhMmqNbYzbb+G8FNiHNx5VdavuVCtv3XfMNadEyDx5MS/638GI9KTMEuSZoj9
 9z5yBjarcaLddPOCIeJwlxTV+2LTekYvv4pQgHmlUgBMAaxtQj113iTxG9Fkzrgs7OAr
 9V3piyD/nmeWW/fYovgZ8EgQfaqXqFzEANQrzhrghPEGgAZNu8zJF20YuclI+67DZPoJ
 Avu1OL9JgAhtJj4+AG8Ys6G6zgVKs9OzIvGewur3Ww7NZoJ2N5tFZZaeiB7F8UGeY3Mt
 xtK2r+urdQ8sTCYED2irlfXl+GaQFkCCqyjr8RMz1aqVfjp8YYW/SsR8Cltd/o5q03VR
 jQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ts+SfjkV9IVT2Tp9q+IQRYfpnHrFD7V4c9G/kb/CUkk=;
 b=Bw1lgzYY3pI+RizCPH7MzE0n8VA09M47IV7a7AuoOElae6OtuOH9UzrvfZ/zqtX1Ia
 vTOMCSOVUJMGu9NXMTpvgrJ73EKpHnJNO6FttlS8DI+elqPRn1Kq1GFaFIIpG8+Zm+ee
 C5W6PLr8G+Q5SlPCsazkoipei649viMo1tlcnnXV2QwoajN5VuIpz/4FzTrSFQI694f5
 JvigUmjQrygmwSOSVxg4fdK47zPaq+zOmX43oq8NLoBDUCwC/7WDqqawTwxr0wBik7wO
 zpL8BRi8kkR8THSUrYkJ4Moennn2iSCAkP8p0GPI+ZNMgCotO2C9iScETL3sDZQ282Tn
 n/tg==
X-Gm-Message-State: APjAAAVS6lhqkrzLDw0cDc3s5M9Rzcm6yde130zT7YXE9aYsQ1DODqRC
 Gw+OpzYbwybf22a7YhSm6lUaNEz/YsDzrxNpfGM=
X-Google-Smtp-Source: APXvYqznQncEzu71CSVrgnkFfq5GNYqZ4yrJv9ptSH2BclSgNSPhM5+1eB0MCGY0qtP4W+k2UveTudgsutbZZwWOrbc=
X-Received: by 2002:a81:1d3:: with SMTP id 202mr8977598ywb.255.1567328961492; 
 Sun, 01 Sep 2019 02:09:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190830154607.6463-1-zajec5@gmail.com>
 <vg58MWhCCD22S7ItxInBzDdSa5ZSoM9zRuh5sFsP236d@mailpile>
 <1efc1c7c-d87e-753a-92d0-3fa5911805b9@softart-ge.com>
In-Reply-To: <1efc1c7c-d87e-753a-92d0-3fa5911805b9@softart-ge.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 1 Sep 2019 11:09:10 +0200
Message-ID: <CACna6rz+O7gFLEMOykqtvUcp8git0rUGxKqc-+sqo7VTXSQwzw@mail.gmail.com>
To: Reiner Karlsberg <karlsberg@softart-ge.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_020923_037019_FAA5EC33 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of
 broken firmware images
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

On Sun, 1 Sep 2019 at 06:13, Reiner Karlsberg <karlsberg@softart-ge.com> wrote:
> This needs to be handled very carefully, not to break
> actual usage of -F.
> I had to use -F couple of times, usually when downgrading
> installed firmware, but with change of name over time.
> Typical example: Change of image name for the zbt-we826.
> Never any problem with usage of -F, though.
>
> But I had several problems with non-completion of
> valid sysupgrade, which even left the system in inconsistent state,
> as the "-f keep.tar.gz" was applied, but not the new image itself.
> Or (silently ?) no sysupgrade done, because of mounted block device
> or active swap file on block device, or active wifi (?).
> Which was a PITA on remote installations.
>
> Question: How are sysupgrade-errors reported/to be handled, as usually also a failed sysupgrade
> triggered a reboot ?
> documentation very unclear here, as it looks like, behaviour in case of errro changed during versions of openwrt.
>
> Best would be "atomic sysupgrade", with standard error-code (+1) on exit instead of expected reboot after success.
>
> I appreciate the new work on sysupgrade, but I am a bit afraid of regressions.

No behavior will change until you explicitly modify your target's
/lib/upgrade/platform.sh to start calling notify_firmware_broken() for
whatever reason (e.g. unrecognized firmware image format).

I'm planning to implement more verbose sysupgrade results later. I was
thinking about ubus method replying with a JSON containing error code
and message. I should prepare some patch for that in a next week or
two.

Please use "Reply to all", I almost missed your reply.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
